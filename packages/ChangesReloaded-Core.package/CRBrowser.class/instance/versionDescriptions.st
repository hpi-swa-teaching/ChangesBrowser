accessing
versionDescriptions
	
	self selectedGroup
		ifNotNil: [^ self selectedGroup collect: [:each | each description]]
		ifNil: [^ OrderedCollection new]