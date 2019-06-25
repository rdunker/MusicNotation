user interface
addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu
		add: 'open editor'
		target: self
		action: #openEditor.
	aMenu
		add: 'open preview'
		target: self
		action: #openPreview.