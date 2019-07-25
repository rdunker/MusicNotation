I build MNNotes for a MNContext and therefore I provide convenience methods to create specific chords. 
Also, I can be combined with other MNNoteBuiders by the + method. The / method gives me the duration of the MNNote I should build and I return a finished MNNoteStatement.
Hint: I am triggert by a MNEnvironment and created in MNEnvironment>>setPitchBindings:

Instance Variables
	context:		MNContext
	pitches:		Collection of MNPitches

context
	- This is the context I build a MNNote for.

pitches
	- These are the MNPitches for MNNote I should build.
