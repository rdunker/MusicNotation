I am the superclass for all objects used to represent music. I know my parent which would be another MNMusicObject. Also I provide the interface for the MNMusicVisitor, as well as the MusicXML saving and loading.

Instance Variables
	parent:		MNMusicObject

parent
	- This is the MNMusicObject I am part of (e.g. a note is part of a measure). 
