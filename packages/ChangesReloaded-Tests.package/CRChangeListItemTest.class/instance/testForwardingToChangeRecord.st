testing
testForwardingToChangeRecord
	
	self assert: self specificChangeListItem1 changeRecord string equals: self specificChangeListItem1 string.
	self assert: self specificChangeListItem1 changeRecord type equals: self specificChangeListItem1 type.
	self assert: self specificChangeListItem1 changeRecord stamp equals: self specificChangeListItem1 stamp.