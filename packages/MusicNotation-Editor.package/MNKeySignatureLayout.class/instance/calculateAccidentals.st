calculating
calculateAccidentals
	| newAccidentals oldAccidentals |
	newAccidentals := self key accidentals.
	self clef = self leftClef ifFalse: [ ^ newAccidentals collect: [ :each | self lineAndAlterOf: each ]].
	
	oldAccidentals := self leftKey accidentals.	
	newAccidentals
		ifEmpty: [ ^ oldAccidentals collect: [ :each | (self lineOf: each) -> 0 ]].
	
	^ self calculateAccidentalChanges: newAccidentals since: oldAccidentals