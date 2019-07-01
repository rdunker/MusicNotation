accessing
globalInstances
	^ GlobalInstances ifNil: [ GlobalInstances := WeakSet new ]