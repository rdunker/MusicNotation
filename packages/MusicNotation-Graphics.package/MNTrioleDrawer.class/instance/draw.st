drawing
draw
	
	self notes second noteLayout number: 16rE1FF.
	"self notes first noteLayout number: 16rE1FE.
	self notes last noteLayout number: 16rE200."
	
	(self log2: (self startNote note duration denominator * (3/2))) <= 4 ifTrue: [
		self drawSquareAt: self startNote.
		self drawSquareAt: self endNote.
		]. 
	"self drawBeam."
	"self calculateDuration."