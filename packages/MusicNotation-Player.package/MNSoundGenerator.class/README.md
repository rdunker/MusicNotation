I am a MNMusicVisitor used to visit MNNotes and convert them to a FMSound playing there MNPitch. I can also visit MNProjects to create a sound sequence and play a complete music piece.

Instance Variables
	baseSound:				FMSound
	soundSequence:		OrderedCollection

baseSound
	- This is my base sound I modify for each MNPitch to represent the right sound.

soundSequence
	- This is the sequence of sounds I fill when I should play a MNProject.
