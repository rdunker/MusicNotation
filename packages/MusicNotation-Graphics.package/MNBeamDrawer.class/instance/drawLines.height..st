drawing
drawLines: anInteger height: aFloat
	| start end|
	start := (self calculateNotePosition: self startNote).
	end := (self calculateNotePosition: self endNote).
	
	self startNote noteLayout drawFlag: false.
	self endNote noteLayout drawFlag: false.
	self startNote noteLayout stemLength: aFloat abs.
	self endNote noteLayout stemLength: (aFloat * endNote noteLineHeight).
	
	0 to: anInteger - 1 do: [ :index |
			self canvas line: (start + ((self beamHeight/2.0)@(aFloat+(index*6)))) to: (end + ((self beamHeight/2.0 * -1)@(aFloat+(index*6)))) width: (self beamHeight) color: (Color black).
		].
	
	"0 to: anInteger - 1 do: [ :index |
			self canvas line: (start + ((self beamHeight/2.0)@((self beamHeight/2.0) + (index * startNote noteLineHeight/2)))) to: (end + ((self beamHeight/2.0 * -1)@((self beamHeight/2.0) + (index * endNote noteLineHeight/2)))) width: (self beamHeight) color: (Color black).
		]."

	"self canvas drawRectangle: (start extent: (end x - start x)@ self beamHeight)
		color: Color black
			borderWidth: 0
			borderColor: nil."