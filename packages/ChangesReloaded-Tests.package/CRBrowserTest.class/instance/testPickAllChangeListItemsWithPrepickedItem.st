testing-functionality
testPickAllChangeListItemsWithPrepickedItem
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	
	self changesBrowser pickAllChangeListItems.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked])
