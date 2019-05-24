converting
convertProject: aProject
	| xml |
	xml := self createDocument.
	xml addElement: (self createScorePartwise: aProject).
	^ xml