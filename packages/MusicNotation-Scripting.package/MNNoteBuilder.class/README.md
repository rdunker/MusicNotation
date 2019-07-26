I build MNNotes for an MNContext and also provide convenience methods to create specific chords. 
Also, I can be combined with other MNNoteBuiders by the + method. The / method gives me the duration of the MNNote I should build and I return a finished MNNoteStatement.
Hint: I am triggered by an MNEnvironment and created in MNEnvironment>>setPitchBindings:

Instance Variables
	context:		MNContext
	pitches:		Set of MNPitches

context
	- This is the context I build an MNNote for.

pitches
	- These are the MNPitches for the MNNote I should build.
