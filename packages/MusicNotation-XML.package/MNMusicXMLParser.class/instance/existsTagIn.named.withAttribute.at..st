accessing
existsTagIn: anXMLElement named: aString withAttribute: anAttribute at: aName
	anXMLElement tagsNamed: aString do: [ :tag |
		(tag attributeAt: aName) = anAttribute ifTrue: [ ^ true ]].
	^ false