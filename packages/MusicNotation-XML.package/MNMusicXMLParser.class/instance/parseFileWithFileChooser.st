parsing
parseFileWithFileChooser
	^ self parseFileNamed: (FileChooser new initializeAsDialogBox open fullName)