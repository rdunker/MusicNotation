comparing
hash: a hash: b hash: c hash: d
	^ a hash hashMultiply bitXor: (self hash: b hash: c hash: d)