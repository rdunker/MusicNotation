calculating
checkForEdgeCases
	| bug firstHalf secondHalf |
	
	bug := self notes select: [ :note | note noteLayout up not].
	(bug size = 1 and: [(self notes first = bug first ) or: [self notes last = bug first]] and: [self notes size > 2]) ifTrue: [self notes remove: bug first].
	bug := self notes select: [ :note | note noteLayout up].
	(bug size = 1 and: [(self notes first = bug first ) or: [self notes last = bug first]] and: [self notes size > 2]) ifTrue: [self notes remove: bug first].
	
	(bug size = 1 and: [self notes size = 3] and: [self notes second = bug first]) ifTrue: [
		self startNote noteLayout stemLength: (self stemOffset: self startNote).
		self endNote noteLayout stemLength: (self stemOffset: self endNote).
		self notes remove: self notes second.
		self update.
		].
	
	(bug size = 2 and: [self notes size = 4]) ifTrue: [
		firstHalf := OrderedCollection new add: self notes first; add: self notes second; yourself.
		secondHalf := OrderedCollection new add: self notes third; add: self notes last; yourself.
		self notes: firstHalf.
		self draw.
		self notes: secondHalf.
		].
	
	bug := self notes select: [ :note | note noteLayout up not].
	
		(bug size = 1 and: [self notes size = 3] and: [self notes second = bug first]) ifTrue: [
		self startNote noteLayout stemLength: (self stemOffset: self startNote).
		self endNote noteLayout stemLength: (self stemOffset: self endNote).
		self notes remove: self notes second.
		self update.
		].
	
	(bug size = 2 and: [self notes size = 4]) ifTrue: [
		firstHalf := OrderedCollection new add: self notes first; add: self notes second; yourself.
		secondHalf := OrderedCollection new add: self notes third; add: self notes last; yourself.
		self notes: firstHalf.
		self draw.
		self notes: secondHalf.
		].
	
	self update.