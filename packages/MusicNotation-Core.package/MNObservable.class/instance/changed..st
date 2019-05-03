updating
changed: aParameter
	super changed: aParameter.
	self dependentChangedEvents pairsDo: [ :a :b |
		(a includes: aParameter)
			ifTrue: [ b do: [ :each | self changed: each ]]].