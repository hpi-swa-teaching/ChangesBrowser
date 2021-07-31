testing
testPriorSourceOrNil
	
	self assert: self expectedContent1 equals: self specificChangeListItem1 priorSourceOrNil.
	self assert: self expectedContent2 equals: self specificChangeListItem2 priorSourceOrNil.
	
	self assert: self specificChangeListItem3 priorSourceOrNil isNil.