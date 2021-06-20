initialize-release
add: aChangeListItem toCorrespondingGroupIn: aDictionary

	(aChangeListItem groupID 
			ifNotNil: [aDictionary at: aChangeListItem groupID ifAbsentPut: [self createNewGroupFor: aChangeListItem]]
			ifNil: [self createNewGroupFor: aChangeListItem]) 
	add: aChangeListItem