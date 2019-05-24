accessing
noteTypeOf: aNote
	"See: https://github.com/w3c/musicxml/blob/v3.1/schema/note.mod#L224-L227"
	"1024th, 512th, 256th, 128th, 64th, 32nd, 16th,"
	"eighth, quarter, half, whole, breve, long, and maxima"
	| dur |
	dur := aNote baseDuration.
	^ dur isInteger
		ifTrue: [ #(whole breve long maxima) at: dur highBit ]
		ifFalse: [ #(half quarter eighth '16th' '32nd' '64th' '128th' '256th' '512th' '1024th') at: dur denominator highBit - 1 ]