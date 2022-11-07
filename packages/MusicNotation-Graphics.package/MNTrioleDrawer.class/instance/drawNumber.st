drawing
drawNumber
	| position codePointThree |
	codePointThree := 16rE1FF.
	position := self notes second leftCenter + self upNumberOffset.
	position := position + (self maxHeightOffset: self notes second).
	
	self notes second noteLayout up ifFalse: [position := self notes second leftCenter + self downNumberOffset].
	self drawNumberAt: position codePoint: codePointThree.