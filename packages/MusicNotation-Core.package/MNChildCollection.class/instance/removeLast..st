removing
removeLast: n
	^ self privateUnsetParentsOf: (super removeLast: n)