writing
writeProjectWithFileChooser: aProject
	self writeProject: aProject toFileNamed: (FileChooser new initializeAsDialogBox open fullName).