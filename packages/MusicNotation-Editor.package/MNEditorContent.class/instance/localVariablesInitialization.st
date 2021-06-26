content list
localVariablesInitialization
	| localVariablesInitialization |

	localVariablesInitialization := ''.
	self localVariables keys do: 
		[ :variable | localVariablesInitialization := localVariablesInitialization, variable, ':= ', (self localVariables at: variable), '. '].
	^ localVariablesInitialization