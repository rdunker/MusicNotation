instance creation
onFileChooser
	
	^ self onFile: (FileChooser new initializeAsDialogBox open fullName)