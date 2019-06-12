comparing
<= aPitch
	| s1 s2 |
	s1 := self steps.
	s2 := aPitch steps.
	^ (s1 < s2) or: [ s1 = s2 and: [ self alter <= aPitch alter ]]