initialize-release
groupOf: aChangeListItem in: aDictionary

	^ aChangeListItem shouldBeGrouped
			ifTrue: [aDictionary at: aChangeListItem groupID ifAbsentPut: [self newGroup]]
			ifFalse: [self newGroup]