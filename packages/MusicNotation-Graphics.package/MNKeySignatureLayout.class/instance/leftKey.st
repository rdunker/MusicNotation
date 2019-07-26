accessing
leftKey
	^ self leftParent 
		ifNil: [ MNEmptyKey new ]
		ifNotNilDo: #key