printing
printDemoOn: aStream
	aStream
		nextPutAll: 'context := MNContext new.'; cr;
		cr.
	
	#cdefgab do: [ :each | aStream
		nextPutAll: ('{1} := MNNoteBuilder context: context pitch: ''{1}4''.' format: { each }); cr ].
	aStream nextPutAll: 'r := MNNoteBuilder context: context.'; cr.
	
	aStream
		cr;
		nextPutAll: '"---------------- Start of script ----------------"'; cr;
		cr;
		nextPutAll: self script; cr;
		cr;
		nextPutAll: '"---------------- End of script ----------------"'; cr;
		cr;
		nextPutAll: 'context project asMorph openInHand'
		 