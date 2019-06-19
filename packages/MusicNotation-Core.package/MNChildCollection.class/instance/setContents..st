private
setContents: anArray
	self privateUnsetParentsOf: self.
	anArray do: [ :each | each privateParent: self parent ].
	^ super setContents: anArray