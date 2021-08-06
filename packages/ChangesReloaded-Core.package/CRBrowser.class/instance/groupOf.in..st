initialize-release
groupOf: aCRChangeListItem in: aDictionary

	^ aCRChangeListItem shouldBeGrouped
			ifTrue: [aDictionary at: aCRChangeListItem groupID ifAbsentPut: [self newGroup]]
			ifFalse: [self newGroup]