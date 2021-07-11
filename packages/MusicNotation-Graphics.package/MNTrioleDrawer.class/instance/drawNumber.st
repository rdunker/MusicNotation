drawing
drawNumber
	| position codePointThree |
	codePointThree := 16rE1FF.
	position := self notes second leftCenter + (self noteHeadWith@ 15).
	position := position + (0@(self maxHeightOffset: self notes second)).
	
	self notes second noteLayout up ifFalse: [position := self notes second leftCenter + (0@75)].

	MNSmuflDrawer new
		canvas: self canvas;
		color: Color black;
		font: self startNote font;
		position: position;
		noteLineHeight: self startNote noteLineHeight;
		drawCodePoint: codePointThree.