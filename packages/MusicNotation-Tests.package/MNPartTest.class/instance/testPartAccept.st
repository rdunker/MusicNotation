as yet unclassified
testPartAccept
	| part |
	part := MNPart new.
	self assert: (MNTestCallRecorder new
		do: [ :v | part accept: v ];
		isSingleCallTo: #visitPart: with: part).