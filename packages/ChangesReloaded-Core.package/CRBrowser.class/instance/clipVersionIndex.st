updating
clipVersionIndex
	
	self versionIndex > self versionDescriptions size
		ifTrue: [self versionIndex: self versionDescriptions size].
	self versionIndex < 0
		ifTrue: [self versionIndex: 0].