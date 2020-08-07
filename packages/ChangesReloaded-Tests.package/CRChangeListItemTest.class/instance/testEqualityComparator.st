testing
testEqualityComparator

	self assert: (self methodChangeListItem = self classCommentChangeListItem) not.
	self assert: self methodChangeListItem = self methodChangeListItem.
	self assert: self methodChangeListItem = self getMethodChangeListItemWithDifferentObjectdentity