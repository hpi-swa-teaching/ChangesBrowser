testing-functionality
testPickAllChangeListItemsWithPrepickedItems
	
	self changesBrowser changeListItems second isPicked: true.
	self changesBrowser changeListItems fifth isPicked: true.
	self changesBrowser pickAllChangeListItems.
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isPicked]).