accessing
status: anObject
	status := anObject.
	self changed: #status.
	self changed: #statusColor.
	self changed: #statusMessage.
	
	"self status applyStyleTo: self".