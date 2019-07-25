I am a the representation of a MNNote while a script is evaluated. I am bound to a MNContext and can be used in different operations.
Hint: I am created in MNContext>>addNote: after a MNNoteBuilder builded a new MNNote for the MNContext.

Instance Variables
	context:		MNContext
	note:			MNNote

context
	- This is the MNContext I am bound to.

note
	- This is the MNNote I represent.
