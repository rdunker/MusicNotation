accessing
doItEnvironment
	^ doItEnvironment ifNil: [ doItEnvironment := self createEnvironment ]