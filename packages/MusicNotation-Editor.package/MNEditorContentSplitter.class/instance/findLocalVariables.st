local variables
findLocalVariables
	| localVariable |

	localVariable := ''.
	self content do: [ :symbol | 
		self topOfStack = $|
				ifTrue: [
					((symbol = $ ) and: (localVariable notEmpty))
						ifTrue: [self addLocalVariable: localVariable. localVariable := ''.].
					(((symbol = $ )not) and: ((symbol = $| ) not))
						ifTrue: [localVariable := localVariable, symbol].
					symbol = $|
						ifTrue: [
							localVariable notEmpty
								ifTrue: [self addLocalVariable: localVariable.].
							self waitingFor pop. ^ self localVariables]
				].
		symbol = $| 
			ifTrue: [self waitingFor push: $|].].
	^ self localVariables