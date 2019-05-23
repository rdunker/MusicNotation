writing
writeProject: aProject

	(self serializeProject: aProject) printXMLOn: self writer.
	self stream close