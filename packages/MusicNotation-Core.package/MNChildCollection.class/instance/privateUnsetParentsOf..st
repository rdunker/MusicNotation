private
privateUnsetParentsOf: aCollection
	^ aCollection
		do: #privateAbandon;
		yourself