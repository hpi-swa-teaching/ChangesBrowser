accessing
versionDescriptions
	
	self selectedGroup
		ifNotNil: [^ self selectedGroup collect: [:each | each versionDescription]]
		ifNil: [^ OrderedCollection new]