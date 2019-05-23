tests
testPitchAccept
	| pitch |
	pitch := MNPitch new.
	self assert: (MNTestCallRecorder new
		do: [ :v | pitch accept: v ];
		isSingleCallTo: #visitPitch: with: pitch).