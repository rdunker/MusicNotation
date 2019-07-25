user interface
addMenuItems: aMenu
	self exception
		ifNotNilDo: [ :e |
			aMenu
				add: 'debug exception'
				target: ToolSet
				selector: #debugError:
				argument: self exception ].