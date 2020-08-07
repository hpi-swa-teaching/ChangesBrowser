testing
testHash

	self assert: (self methodChangeListItem hash = self classCommentChangeListItem hash) not.
	self assert: (self methodChangeListItem hash = self methodChangeListItem hash).
	self assert: (self methodChangeListItem hash = self getMethodChangeListItemWithDifferentObjectdentity hash) not