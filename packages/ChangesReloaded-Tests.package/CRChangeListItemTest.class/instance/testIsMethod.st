testing
testIsMethod

	self assert: (self specificChangeListItem1 isMethod).
	self assert: (self specificChangeListItem2 isMethod not)