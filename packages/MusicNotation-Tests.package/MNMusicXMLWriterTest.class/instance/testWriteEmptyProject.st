tests
testWriteEmptyProject
| project part measure parsedProject |

project := MNProject new.
part := MNPart new.
measure := MNMeasure new.

project addPart: part.
part addMeasure: measure.

(MNMusicXMLWriter onFile: 'empty.xml') writeProject: project.

parsedProject := MNMusicXMLParser parseFileNamed: 'empty.xml'.

self assert: 1 equals: parsedProject parts size.
self assert: 1 equals: (parsedProject parts at: 1) measures size. 
self assert: 0 equals: ((parsedProject parts at: 1) measures at: 1) notes size. 

FileDirectory deleteFilePath: 'empty.xml'.
