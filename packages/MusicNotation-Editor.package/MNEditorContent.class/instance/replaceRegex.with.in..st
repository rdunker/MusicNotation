local variables
replaceRegex: aRegex with: replacementString in: statementString
	^ statementString 
		copyWithRegex: aRegex 
		matchesReplacedWith: replacementString