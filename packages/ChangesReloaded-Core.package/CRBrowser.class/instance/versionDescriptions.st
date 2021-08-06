accessing
versionDescriptions
	
	^ self selectedGroup
		ifNil: [OrderedCollection new]
		ifNotNil: [self selectedGroup versionDescriptions]
		