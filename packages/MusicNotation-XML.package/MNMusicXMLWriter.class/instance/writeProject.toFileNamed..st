writing
writeProject: aProject toFileNamed: fileName
	"use forceNewFileNamed: if the file should be overwritten without any user interaction"
	self writeProject: aProject to: (FileStream newFileNamed: fileName).