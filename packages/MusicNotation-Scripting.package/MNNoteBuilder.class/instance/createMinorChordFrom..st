accessing
createMinorChordFrom: aPitch
	^ Set newFrom: { aPitch copy . self createMinorThirdFrom: aPitch . self createPerfectFifthFrom: aPitch }