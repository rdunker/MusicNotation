accessing
divisions
	^ divisions ifNil: [ MNMissingValue for: self at: #divisions ]