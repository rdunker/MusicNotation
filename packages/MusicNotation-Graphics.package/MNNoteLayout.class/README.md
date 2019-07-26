I am an MNLayoutWithAccidentals used to organize and lay out MNNotes, including their accidentals, chords, dots, etc.

Instance Variables
	dots:					OrderedCollection of Integers
	flagCodePoint:			Integer
	leftNoteheads:			OrderedCollection of Integers
	lines:					OrderedCollection of Integers
	note:					MNNote
	notehead:				Integer
	rightNoteheads:		OrderedCollection of Integers
	up:						Boolean

dots
	- These are the note lines of all dots the MNNote I layout has. It is used for dotted notes.
	
flagCodePoint
	- This is the code point that gives the SVG path in the used MNFont for the flag the MNNote I layout has.

leftNoteheads
	- These are all note lines of pitches displayed on the left side of the stem of the MNNote I layout.

lines
	- These are all the note lines with pitches for the MNNote I layout.

note
	- This is the MNNote I layout.

notehead
	- This is the codepoint that gives the SVG path in the used MNFont of the nothead the MNNote I layout consists of.

rightNoteheads
	- These are all note lines of pitches displayed on the right side of the stem of the MNNote I layout.

up
	- This indicates if the stem is pointing up (true) or down (false).
