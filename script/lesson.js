#!/usr/bin/env node
const fs = require('fs')
const path = require('path')

var fileName = process.argv[2]
console.log("Processing: " + fileName)
var PREFIX = "file://"

function createDir(folder) {
	if (!fs.existsSync(folder)) {
	    fs.mkdirSync(folder, 0744)
	}
}

function copyFiles(folderName) {
	var lineReader = require('readline').createInterface({
	  input: require('fs').createReadStream(fileName)
	})

	var count = 0
	lineReader.on('line', function (line) {
	 	if (line.indexOf(PREFIX)!= -1){
	 		var cleanedFile = decodeURIComponent(line.replace(PREFIX, ""))
	 		count++
	 		var paddedNumber = count > 9 ? count : "0" + count 
	 		var fileNameOnly = path.basename(cleanedFile)
	 		var stripNonAsic = fileNameOnly.replace(/\s+/g,' ');
	 		var newFileName = [folderName, "/", paddedNumber,"-", stripNonAsic].join("")
			fs.copyFileSync(cleanedFile, newFileName, (err) => {
				if (err) throw err;
			});

	 	}
	})

}

var folderName = path.basename(fileName).replace(path.extname(fileName), "")
createDir(folderName)
var songCreated = copyFiles(folderName)
console.log("Done, created " + folderName + ".")