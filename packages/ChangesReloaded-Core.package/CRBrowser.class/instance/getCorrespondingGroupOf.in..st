initialize-release
getCorrespondingGroupOf: aChangeListItem in: aDictionary

	^ aChangeListItem shouldBeGrouped
			ifTrue: [aDictionary at: aChangeListItem groupID ifAbsentPut: [self createNewGroupFor: aChangeListItem]]
			ifFalse: [self createNewGroupFor: aChangeListItem]