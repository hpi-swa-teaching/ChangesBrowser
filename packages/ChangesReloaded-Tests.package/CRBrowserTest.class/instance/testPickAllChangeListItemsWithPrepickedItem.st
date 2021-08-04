testing-functionality
testPickAllChangeListItemsWithPrepickedItem
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	
	self changesBrowser pickAllChanges.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked])
