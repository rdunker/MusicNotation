accessing
name: anObject
	name := anObject ifNotNil: [ anObject ifEmpty: nil ].
	self changed: #name.
	self changed: #editorLabel.
	self changed: #previewLabel.