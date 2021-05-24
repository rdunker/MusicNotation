as yet unclassified
contentsList
	| list  statement bool |
	
	list:= OrderedCollection new. 
	statement:=''.
	
	bool := false. 
	self contents do: [ :each | 
							   statement:= statement,each.
							  each = $[
							   ifTrue: [bool := true.].
							  each = $]
							   ifTrue: [bool := false.].
							
							bool 
							ifFalse: [
							   	each = $.
							   		ifTrue: [list addLast: statement.
											statement:=''.] ] .
							].
	^ list