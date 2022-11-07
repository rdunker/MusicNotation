content list
contentsList
	| contentSplitter |
	
	contentSplitter := MNEditorContentSplitter content: self text.
	^ contentSplitter splitIntoStatements.