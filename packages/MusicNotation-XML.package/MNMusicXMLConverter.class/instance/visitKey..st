visiting
visitKey: aKey
	| xml |
	xml := XMLElement named: #key.
	
	aKey asFifths
		ifNotNilDo: [ :fifths | xml addElement: (self stringNamed: #fifths content: fifths) ]
		ifNil: [
			aKey accidentals keysAndValuesDo: [ :step :alter | xml
				addElement: (self stringNamed: #'key-step' content: step asUppercase);
				addElement: (self stringNamed: #'key-alter' content: alter) ]].
	
	^ xml