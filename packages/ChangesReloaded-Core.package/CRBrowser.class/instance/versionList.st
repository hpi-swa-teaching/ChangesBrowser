accessing
versionList
	
	^ self selectedGroup 
		ifNil: [{}]
		ifNotNil: [self getVersionDescriptionsFrom: (self changeGroups at: self selectedGroup)]
	