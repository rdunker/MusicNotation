accessing
do: aBlock
	self depth: self depth + 1.
	aBlock value: self.
	self depth: self depth - 1.