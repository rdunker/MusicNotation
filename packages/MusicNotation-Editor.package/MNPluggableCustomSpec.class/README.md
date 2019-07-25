I am a PluggableWidgetSpec that can be used to display morphs in a ToolBuilder application and customize them with the normal morph interface.

Instance Variables
	customProps:		Dictionary
	morphClass:		Class

customProps
	- This is a dictionary containing method symbols with their needed arguments. These methods are called on the morph I should display.

morphClass
	- This is the class of the morph I should display.
