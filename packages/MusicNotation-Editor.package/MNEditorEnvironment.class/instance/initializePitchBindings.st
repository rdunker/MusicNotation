initialize-release
initializePitchBindings
	'cdefgab' do: [ :step | 
		self setPitchBinding: step.
		0 to: 7 do: [ :octave |
			self setPitchBinding: step asString, octave.
			'fns' do: [ :alter |
				self setPitchBinding: step asString, octave, alter]]].