tests
testProjectAccept
	| project |
	project := MNProject new.
	self assert: (MNTestCallRecorder new
		do: [ :v | project accept: v ];
		isSingleCallTo: #visitProject: with: project).