testing-functionality
testPickedChangeListItems

	| testPickedItems |
	self assert: (self changesBrowser pickedChangeListItems isEmpty).
	
	self changesBrowser changeListItems first pick.
	self changesBrowser changeListItems fifth pick.
	testPickedItems := OrderedCollection new.
	testPickedItems add: self changesBrowser changeListItems first.
	testPickedItems add: self changesBrowser changeListItems fifth.
	self assert: (self changesBrowser pickedChangeListItems = testPickedItems)