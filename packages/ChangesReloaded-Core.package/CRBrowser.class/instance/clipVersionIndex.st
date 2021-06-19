updating
clipVersionIndex
	
	self versionIndex > self versionDescriptions size
		ifTrue: [self versionIndex: self versionDescriptions size]