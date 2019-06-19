accessing
isValid
	"Is the cached layout still valid or has the object (and its hash) changed"
	^ self hash = self lastHash