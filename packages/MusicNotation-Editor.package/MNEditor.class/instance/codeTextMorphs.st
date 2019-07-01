accessing
codeTextMorphs
	^ self dependents select: [ :each |
		(each isKindOf: PluggableTextMorphPlus)
			and: [ each model == self ]
			and: [ each getTextSelector == #contents ]]