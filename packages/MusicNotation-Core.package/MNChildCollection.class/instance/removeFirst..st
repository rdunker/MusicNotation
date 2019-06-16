removing
removeFirst: n
	^ self privateUnsetParentsOf: (super removeFirst: n)