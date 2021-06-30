testing
testEqualityComparator

	self
		deny: self specificChangeListItem1 = self specificChangeListItem2;
		assert: self specificChangeListItem1 = self specificChangeListItem1;
		assert: self specificChangeListItem1 = self specificChangeListItem1 copy.
