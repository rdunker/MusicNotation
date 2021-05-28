accessing
updateContents: aStringOrText
	self content updateContents: aStringOrText.
	self contents: self content text.
	self changed: #contents.
	self evaluateContentList.
	self name: self content name.