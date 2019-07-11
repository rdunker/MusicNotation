instance creation
fromHalfSteps: aNumber atStep: aStep
	| stepIndex steps |
	steps := #c_d_ef_g_a_b.
	stepIndex := (aNumber rem: 12).
	
	#(-1 0 1) do: [ :alter |
		| step |
		step := steps at: ((stepIndex - alter + 12 rem: 12) + 1).
		step == aStep ifTrue: [ ^ self new
			step: step;
			octave: (aNumber - alter) // 12;
			alter: alter ] ].
	MNInvalidValue for: self at: #fromHalfSteps value: aStep description: 'cannot create pitch at that half step and step'