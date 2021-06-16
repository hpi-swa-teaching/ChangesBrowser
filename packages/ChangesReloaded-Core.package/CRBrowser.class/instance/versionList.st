accessing
versionList
	
	^ self changeGroups at: groupIndex ifPresent: [:list | self getVersionDescriptionsFrom: list] ifAbsent: [^ {}]