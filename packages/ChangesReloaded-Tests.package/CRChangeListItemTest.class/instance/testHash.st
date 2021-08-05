testing
testHash

	self
		deny: self specificChangeListItem1 hash = self specificChangeListItem2 hash;
		assert: self specificChangeListItem1 hash = self specificChangeListItem1 hash;
		assert: self specificChangeListItem1 hash = self specificChangeListItem1 copy hash.
