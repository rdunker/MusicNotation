comparing
hash: a hash: b
	^ a hash hashMultiply bitXor: (self hash: b)