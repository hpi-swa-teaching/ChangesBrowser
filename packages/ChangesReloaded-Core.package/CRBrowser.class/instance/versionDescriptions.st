accessing
versionDescriptions
	
	self selectedGroup
		ifNotNil: [^ self selectedGroup versionDescriptions]
		ifNil: [^ OrderedCollection new]