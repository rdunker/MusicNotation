converting
writeDeclarationOn: aWriter
	aWriter xmlDeclaration: '1.0' encoding: 'UTF-8'.
	aWriter stream cr.
	
	aWriter startDecl: 'DOCTYPE' named: 'score-partwise'.
	aWriter stream nextPutAll: 'PUBLIC'; cr.
	
	aWriter
		putAsXMLString: '-//Recordare//DTD MusicXML 3.1 Partwise//EN'.
	aWriter stream cr.
	
	aWriter
		putAsXMLString: 'http://www.musicxml.org/dtds/partwise.dtd';
		endDecl: 'DOCTYPE'.