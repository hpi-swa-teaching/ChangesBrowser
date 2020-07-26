testing-functionality
testPickedChangeListItems

	| testPickedItems |
	self assert: (self changesBrowser pickedChangeListItems isEmpty = true).
	
	self changesBrowser changeListItems first isPicked: true.
	self changesBrowser changeListItems fifth isPicked: true.
	testPickedItems := OrderedCollection new.
	testPickedItems add: self changesBrowser changeListItems first.
	testPickedItems add: self changesBrowser changeListItems fifth.
	self assert: (self changesBrowser pickedChangeListItems = testPickedItems)