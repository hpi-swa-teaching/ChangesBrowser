testing
testEqualityComparator

	self
		deny: self methodChangeListItem = self classCommentChangeListItem;
		assert: self methodChangeListItem = self methodChangeListItem;
		assert: self methodChangeListItem = self getMethodChangeListItemWithDifferentObjectIdentity
