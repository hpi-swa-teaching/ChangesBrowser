testing-functionality
testPickedChangeListItems

	| testPickedItems |
	self assert: (self changesBrowser pickedChangeListItems isEmpty).
	
	testPickedItems := OrderedCollection new.
	
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	testPickedItems add: self changesBrowser selectedChangeListItem.
	
	self selectSecondChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	testPickedItems add: self changesBrowser selectedChangeListItem.

	self assert: testPickedItems equals: self changesBrowser pickedChangeListItems.