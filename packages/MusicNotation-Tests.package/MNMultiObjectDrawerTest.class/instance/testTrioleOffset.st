testing
testTrioleOffset
	"Ignore while linting"
	| trioleDrawer downOffset upOffset |

	trioleDrawer := MNTrioleDrawer new.
	
	downOffset := trioleDrawer downOffset.
	upOffset := trioleDrawer upNumberOffset.

	self assert: upOffset equals: 10@15.
	self assert: downOffset equals: 0@(-8).