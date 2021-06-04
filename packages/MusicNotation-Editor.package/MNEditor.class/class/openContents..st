opening
openContents: aString
	^ self new 
		updateContents: aString;
		openEditor