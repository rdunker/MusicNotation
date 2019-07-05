tests
testOpenPreview
	| editor |
	editor := MNEditor new.
	self ensureAbandonOf: editor openPreview
		do: [ :morph |
			morph drawOn: self hiddenCanvas.
			editor project: MNSong alleMeineEntchen project.
			morph drawOn: self hiddenCanvas ].