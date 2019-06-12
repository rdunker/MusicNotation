accessing
isValid
	"Is the cached layout still valid or has the note (and its hash) changed"
	^ self note hash = self lastHash