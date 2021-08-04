tests
testOpenEditor
	| editor |
	
	editor := MNEditor new.
	self ensureAbandonOf: editor openEditor
		do: [ :morph |
			morph drawOn: self hiddenCanvas.
			
			editor updateContents: 'c/4'.
			morph drawOn: self hiddenCanvas.
			
			[ editor updateContents: 'c/6' ]
				on: MNInvalidValue
				do: #defaultAction.
			morph drawOn: self hiddenCanvas.
			
			[ editor updateContents: '6 6' ]
				on: SyntaxError
				do: #defaultAction.
			morph drawOn: self hiddenCanvas ].