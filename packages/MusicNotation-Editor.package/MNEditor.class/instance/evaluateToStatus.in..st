evaluating
evaluateToStatus: aString in: anEnvironment
	^ [
		self evaluate: aString in: anEnvironment.
		MNEditorStatusSuccess new ]
		
		on: SyntaxErrorNotification
		do: [ :e | e return: (MNEditorStatusException new syntaxError: e in: self) ]
		
		on: Exception
		do: [ :e | e return: (MNEditorStatusException new error: e in: self) ]