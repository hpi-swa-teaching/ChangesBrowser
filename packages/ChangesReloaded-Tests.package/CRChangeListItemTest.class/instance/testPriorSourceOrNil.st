testing
testPriorSourceOrNil

	self assert: self specificChangeListItem1 priorSourceOrNil notNil.
	self assert: self specificChangeListItem2 priorSourceOrNil notNil.
	self assert: self specificChangeListItem3 priorSourceOrNil isNil.