tests
testWriteEmptyProject
	| project part measure parsedProject xml |

	project := MNProject new.
	part := MNPart new.
	measure := MNMeasure new.

	project addPart: part.
	part addMeasure: measure.

	xml := project asXMLString.
	parsedProject := MNMusicXMLParser parseFrom: xml.

	self assert: 1 equals: parsedProject parts size.
	self assert: 1 equals: parsedProject parts first measures size.
	self assert: 0 equals: parsedProject parts first measures first notes size.
