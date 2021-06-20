testing
testUnpickedItemsAttributes

	self methodChangeListItem pick.
	self assert: (self methodChangeListItem versionDescription find: TextEmphasis italic) = nil.
	self assert: (self methodChangeListItem versionDescription find: TextEmphasis struckOut) = nil.
	
	self methodChangeListItem unpick.
	self assert: (self methodChangeListItem versionDescription find: TextEmphasis italic) = (1 to: self methodChangeListItem versionDescription size).
	self assert: (self methodChangeListItem versionDescription find: TextEmphasis struckOut) = (1 to: self methodChangeListItem versionDescription size).