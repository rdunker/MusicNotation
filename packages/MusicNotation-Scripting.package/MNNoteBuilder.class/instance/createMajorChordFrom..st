accessing
createMajorChordFrom: aPitch
	^ Set newFrom: { aPitch copy . self createMajorThirdFrom: aPitch . self createPerfectFifthFrom: aPitch }