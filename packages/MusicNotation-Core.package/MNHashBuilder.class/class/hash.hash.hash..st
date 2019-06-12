comparing
hash: a hash: b hash: c
	^ a hash hashMultiply bitXor: (self hash: b hash: c)