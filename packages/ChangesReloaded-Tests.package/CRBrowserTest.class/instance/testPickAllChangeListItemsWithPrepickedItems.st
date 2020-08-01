testing-functionality
testPickAllChangeListItemsWithPrepickedItems
	
	self changesBrowser changeListItems second pick.
	self changesBrowser changeListItems fifth pick.
	self changesBrowser pickAllChangeListItems.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked]).