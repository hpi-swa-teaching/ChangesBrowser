testing
testUnpickedItemsAttributes

	self methodChangeListItem pick.
	self assert: (self methodChangeListItem description find: TextEmphasis italic) = nil.
	self assert: (self methodChangeListItem description find: TextEmphasis struckOut) = nil.
	
	self methodChangeListItem unpick.
	self assert: (self methodChangeListItem description find: TextEmphasis italic) = (1 to: self methodChangeListItem description size).
	self assert: (self methodChangeListItem description find: TextEmphasis struckOut) = (1 to: self methodChangeListItem description size).