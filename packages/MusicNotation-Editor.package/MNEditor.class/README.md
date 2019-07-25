I am a an editor created with the ToolBuilder used to edit code and providing an error analysis as well as syntax highlighting. Also, I am optimized to accept the scripting API for the MusicNotaition project.

Instance Variables
	doItEnvironment:		MNEditorEnvironment
	name:					String
	project:					MNProject
	status:					MNEditorStatus

doItEnvironment
	- This is the environment the code is evaluated.

name
	- This is the name of the window which is displayed in the top bar.

project
	- This is the MNProject the script in the environment is written for.

status
	- This is an status notification giving information about the script.
