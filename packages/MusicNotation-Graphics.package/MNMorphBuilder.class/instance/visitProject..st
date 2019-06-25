visiting
visitProject: aProject
	| morph |
	morph := MNProjectMorph project: aProject.
	
	self addAll: aProject parts to: morph.
	
	^ morph