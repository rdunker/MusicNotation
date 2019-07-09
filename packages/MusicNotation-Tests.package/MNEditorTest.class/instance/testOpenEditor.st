tests
testOpenEditor
	| editor |
	editor := MNEditor new.
	self ensureAbandonOf: editor openEditor
		do: [ :morph |
			morph drawOn: self hiddenCanvas.
			
			editor contents: 'c/4'.
			morph drawOn: self hiddenCanvas.
			
			[ editor contents: 'c/6' ]
				on: MNInvalidValue
				do: #defaultAction.
			morph drawOn: self hiddenCanvas.
			
			[ editor contents: '6 6' ]
				on: SyntaxError
				do: #defaultAction.
			morph drawOn: self hiddenCanvas ].