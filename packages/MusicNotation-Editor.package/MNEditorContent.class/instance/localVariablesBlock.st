content list
localVariablesBlock
	| localVariablesBlock |

	self localVariables notEmpty
		ifTrue: [localVariablesBlock := '| '.
			self localVariables keys do: [ :variable | localVariablesBlock := localVariablesBlock, variable, ' '].
			^ localVariablesBlock, '|'].
	^ ''