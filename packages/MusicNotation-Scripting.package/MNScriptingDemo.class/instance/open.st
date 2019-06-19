initialize-release
open
	| window |
	window := Workspace open.
	window model contents: (String streamContents: [ :s | self printDemoOn: s ]).
	window height: 600.