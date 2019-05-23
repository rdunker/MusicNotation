tests
testParsePitch

	| pitch xmlPitch |
	xmlPitch := self parseXML: '<pitch><step>C</step><octave>4</octave></pitch>'.
	pitch :=  self xmlParser parsePitch: xmlPitch.
	
	self assert: 'c' equals: pitch step.
	self assert: 4 equals: pitch octave.
	self assert: pitch isNormal.