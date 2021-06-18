drawing
drawLines: anInteger height: aFloat
	| start end|

	
	self startNote noteLayout drawFlag: false.
	self endNote noteLayout drawFlag: false.
	self startNote noteLayout stemLength: (self startNote noteLayout lines first + 100) - (aFloat + 100) + 3.5.
	self endNote noteLayout stemLength: (self endNote noteLayout lines first + 100) - (aFloat + 100) +  3.5.
	self startNote nextSymbol noteLayout drawFlag: false.
	self endNote lastSymbol noteLayout drawFlag: false.
	self startNote nextSymbol noteLayout stemLength: (self startNote nextSymbol noteLayout lines first + 100) - (aFloat + 100) + 3.5.
	self endNote lastSymbol noteLayout stemLength: (self endNote lastSymbol noteLayout lines first + 100) - (aFloat + 100) +  3.5.
	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).	

	0 to: anInteger - 1 do: [ :index |
			self canvas line: (start + ((self beamHeight/2.0)@((self beamHeight/2.0) + (index * startNote noteLineHeight/2)))) to: (end + ((self beamHeight/2.0 * -1)@((self beamHeight/2.0) + (index * endNote noteLineHeight/2)))) width: (self beamHeight) color: (Color black).
		].
