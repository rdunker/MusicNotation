accessing
contents: aStringOrText
	super contents: aStringOrText.
	self changed: #contents.
	self evaluateContentList.
	self name: self nameOfContents.