accessing
xmlParser
	| parser |
	parser := MNMusicXMLParser new.
	parser divisions: 1.
	^ parser