accessing
noteLineHeight: anObject
	noteLineHeight := anObject.
	
	self flag: #todo. "Replace 250 with 1000 units per em and 0.25 em per note line"
	fontScale := self noteLineHeight / 250.
	self font bounds height < 0 ifTrue: [ fontScale := fontScale @ fontScale negated ].