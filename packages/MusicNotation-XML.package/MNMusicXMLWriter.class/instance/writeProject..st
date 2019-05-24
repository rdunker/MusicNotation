writing
writeProject: aProject
	^ String streamContents: [ :stream |
		self writeProject: aProject to: stream ]