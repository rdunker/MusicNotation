accessing
assert: anObject fires: aBlock events: anOrderedCollection
	"assert that anObject fires all events in anOrderedCollection in aBlock"
	| observer |
	observer := MNTestObserver new.
	anObject addDependent: observer.
	aBlock value.
	anObject removeDependent: observer.
	anOrderedCollection do: [ :event | self assert: (observer changes includes: event) description: 'Change ', event, ' was not fired.' ].