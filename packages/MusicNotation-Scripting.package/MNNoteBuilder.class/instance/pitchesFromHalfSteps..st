accessing
pitchesFromHalfSteps: aNumber
	| pitches octave stepIndex steps |
	steps := #c_d_ef_g_a_b.
	octave := aNumber // 12.
	stepIndex := (aNumber rem: 12).
	
	pitches := Set new.
	
	#(-1 0 1) do: [ :alter |
		| step |
		step := steps at: ((stepIndex - alter + 12 rem: 12) + 1).
		step == $_
			ifFalse: [
				pitches add: (MNPitch new
					step: step;
					octave: (aNumber - alter) // 12;
					alter: alter) ] ].
	^ pitches