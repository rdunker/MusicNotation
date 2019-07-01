accessing
contents: aStringOrText
	super contents: aStringOrText.
	self changed: #contents.
	self evaluateContents.
	self name: self nameOfContents.