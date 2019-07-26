instance creation
fromHalfSteps: aNumber atStep: aStep
	-2 to: 2 do: [ :alter |
		| step |
		step := self halfStepCollection at: ((aNumber - alter + 12 rem: 12) + 1).
		step == aStep ifTrue: [ ^ self new
			step: step;
			octave: (aNumber - alter) // 12;
			alter: alter ] ].
	
	MNInvalidValue for: self at: #fromHalfSteps value: aStep description: 'cannot create pitch at that half step and step'.