accessing
valueChanged: aBlock
	^ ((aBlock value: self) = (self leftSibling ifNotNilDo: aBlock)) not