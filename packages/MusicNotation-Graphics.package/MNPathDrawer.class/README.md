I am the implementation of an SVG path drawer for the MusicNotation project. I can be used to create bezier curves for a given SVG path.

Instance Variables
	lastControlPoint:		Point
	lastPosition:				Point
	lastStart:				Point
	path:					String
	shape:					OrderedCollection

lastControlPoint
	- This is the last control point I used for a segment of the path.

lastPosition
	- This is the last position reached by the shape. The next segment starts here.

lastStart
	- This is the start of the current shape.

path
	- This is the path I draw.

shape
	- This are all segments already done. Together they are the shape I draw.
