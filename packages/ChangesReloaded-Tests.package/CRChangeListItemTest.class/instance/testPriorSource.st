testing
testPriorSource
	
	self assert: self expectedContent1 equals: self specificChangeListItem1 priorSource.
	self assert: self expectedContent2 equals: self specificChangeListItem2 priorSource.