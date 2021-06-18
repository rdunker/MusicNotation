drawing
drawLines: anInteger
	| start end|
	

	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).
	
	self startNote noteLayout drawFlag: false.
	self endNote noteLayout drawFlag: false.
	self startNote nextSymbol noteLayout drawFlag: false.
	self endNote lastSymbol noteLayout drawFlag: false.
	
	0 to: anInteger - 1 do: [ :index |
			self canvas line: (start + ((self beamHeight/2.0)@((self beamHeight/2.0) + (index * startNote noteLineHeight/1.5)))) to: (end + ((self beamHeight/2.0 * -1)@((self beamHeight/2.0) + (index * endNote noteLineHeight/1.5)))) width: (self beamHeight) color: (Color black).
		].
