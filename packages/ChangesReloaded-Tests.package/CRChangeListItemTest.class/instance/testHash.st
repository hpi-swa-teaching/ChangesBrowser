testing
testHash

	self
		deny: self methodChangeListItem hash = self classCommentChangeListItem hash;
		assert: self methodChangeListItem hash = self methodChangeListItem hash;
		assert: self methodChangeListItem hash = self getMethodChangeListItemWithDifferentObjectIdentity hash
