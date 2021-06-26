drawing
drawLines: anInteger maxHeight: maxFloat minHeight: minFloat
	| start end|

	
	self startNote noteLayout drawFlag: false.
	self endNote noteLayout drawFlag: false.
	self startNote noteLayout stemLength: (self stemOffset: self startNote maxHeight: maxFloat minHeight: minFloat).
	self endNote noteLayout stemLength: (self stemOffset: self endNote maxHeight: maxFloat minHeight: minFloat).
	self startNote nextSymbol noteLayout drawFlag: false.
	self endNote lastSymbol noteLayout drawFlag: false.
	self startNote nextSymbol noteLayout stemLength: (self stemOffset: self startNote nextSymbol maxHeight: maxFloat minHeight: minFloat).
	self endNote lastSymbol noteLayout stemLength: (self stemOffset: self endNote lastSymbol maxHeight: maxFloat minHeight: minFloat).
	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).	

	0 to: anInteger - 1 do: [ :index |
			self canvas line: (start + ((self beamHeight/2.0)@((self beamHeight/2.0) + (index * startNote noteLineHeight/2)))) to: (end + ((self beamHeight/2.0 * -1)@((self beamHeight/2.0) + (index * endNote noteLineHeight/2)))) width: (self beamHeight) color: (Color black).
		].
