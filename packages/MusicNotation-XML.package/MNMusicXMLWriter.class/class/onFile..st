instance creation
onFile: aFile
	
	FileDirectory deleteFilePath: aFile.
	^ self on: (FileStream fileNamed: aFile)