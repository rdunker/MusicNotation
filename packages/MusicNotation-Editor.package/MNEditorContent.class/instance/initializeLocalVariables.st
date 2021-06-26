local variables
initializeLocalVariables
	self halt.
	self localVariables: ((MNEditorContentSplitter content: self text) findLocalVariables).