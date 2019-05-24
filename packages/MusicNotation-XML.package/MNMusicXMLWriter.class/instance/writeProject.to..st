writing
writeProject: aProject to: aStream
	(self convertProject: aProject)
		printOn: aStream.