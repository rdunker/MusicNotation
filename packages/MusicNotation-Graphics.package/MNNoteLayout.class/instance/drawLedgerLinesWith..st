drawing
drawLedgerLinesWith: aDrawer
	| lines |
	lines := self lines at:1.
	
	(lines abs) >= 3  ifTrue: [
		lines > 0 ifTrue: [
			3 to: lines do: [:index | 
				aDrawer canvas drawRectangle: ((((self note morph position x - 10) @ (self note morph center y + (index * self note morph noteLineHeight))) rounded) extent: (28@1)) color: Color black borderWidth: 0 borderColor: nil.
			]
		]
		ifFalse: [lines ceiling to: -3 do: [:index | 
				aDrawer canvas drawRectangle: ((((self note morph position x - 10) @ (self note morph center y + (index * self note morph noteLineHeight))) rounded) extent: (28@1)) color: Color black borderWidth: 0 borderColor: nil.
			]
		]
	].