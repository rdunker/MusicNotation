drawing
drawDynamicsWith: aDrawer For: aMNNote

		| xOffset yOffset |
		
		xOffset := -250. 
		yOffset := self calculateDynamicsHeight: aMNNote.
		aDrawer moveDynamics: ( xOffset@yOffset ).
		aDrawer drawCodePoint: self dynamics.