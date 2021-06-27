calculation
drawLinesFrom: startMNNoteMorph to: endMNNoteMorph

	0 to: (self beamNumber - 1) do: [ :index |
			self canvas line: (startMNNoteMorph + ((self beamHeight/2.0)@((self beamHeight/2.0) + (index * (self notes last) noteLineHeight/2)))) to: (endMNNoteMorph + ((self beamHeight/2.0 * -1)@((self beamHeight/2.0) + (index * (self notes first) noteLineHeight/2)))) width: (self beamHeight) color: (Color black).
		].