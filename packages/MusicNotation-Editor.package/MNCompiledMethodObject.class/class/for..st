accessing
for: aCompiledMethod
	| instance |
	instance := self new
		compiledMethod: aCompiledMethod;
		yourself.
	^ self globalInstances like: instance
		ifAbsent: [
			self globalInstances add: instance.
			instance ]