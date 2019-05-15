accessing
parseGlyphs: aString
	"helper method to convert a string into the glyphs dictonary"
	"required because there exists a limit of max. number of literals per method"
	"and a font consists of a lot of literals (two per code point)"
	| stream |
	stream := ReadStream on: aString.
	[ stream atEnd ]
		whileFalse: [ | codePoint path width |
			codePoint := stream nextFloat asInteger.
			stream next.
			width := stream nextFloat.
			stream next.
			path := stream nextLine ifNil: [ self halt: 'WTF????' ].
			self glyphs at: codePoint put: (MNGlyph new
				font: self;
				path: path;
				width: width;
				yourself).
		].