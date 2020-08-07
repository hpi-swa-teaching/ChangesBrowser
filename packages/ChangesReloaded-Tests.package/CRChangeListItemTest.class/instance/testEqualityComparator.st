testing
testEqualityComparator

	self deny: self methodChangeListItem = self classCommentChangeListItem.
	self assert: self methodChangeListItem = self methodChangeListItem.
	self assert: self methodChangeListItem = self getMethodChangeListItemWithDifferentObjectIdentity
