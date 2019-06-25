drawing
drawNoteheads: noteheads with: aDrawer
	noteheads do: [ :each |
		aDrawer drawCodePoint: self notehead at: each ].