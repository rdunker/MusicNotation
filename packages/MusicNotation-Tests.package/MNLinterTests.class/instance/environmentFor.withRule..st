private
environmentFor: aPlugIn withRule: aRule
	^ aPlugIn = SLSmallLintPlugIn
		ifTrue: [MNScopedEnvironment newFor: self classTestObjects test: aRule plugIn: SLSmallLintPlugIn]
		ifFalse: [SLDefaultEnvironment new]