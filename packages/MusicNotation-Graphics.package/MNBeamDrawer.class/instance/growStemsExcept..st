drawing
growStemsExcept: aMNNoteMorph
	self notes do: [:note | note ~= aMNNoteMorph ifTrue: [note noteLayout stemLength: (self stemOffset: note)]].
