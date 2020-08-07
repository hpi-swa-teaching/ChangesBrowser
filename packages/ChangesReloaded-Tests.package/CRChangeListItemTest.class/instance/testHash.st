testing
testHash

	self deny: self methodChangeListItem hash = self classCommentChangeListItem hash.
	self assert: self methodChangeListItem hash = self methodChangeListItem hash.
	self deny: self methodChangeListItem hash = self getMethodChangeListItemWithDifferentObjectdentity hash
