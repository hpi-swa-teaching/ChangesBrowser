testing-functionality
testLoadAfterPicking
	
	| changeListItems |
	changeListItems := self changesBrowser changeListItems.
	
	self pickSomeChanges.
	self assert: 4 equals: self changesBrowser numberOfPickedChangeListItems.
	
	self changesBrowser loadPickedChanges.
	self assert: self expectedFiledInStatusOfChanges equals: (changeListItems collect: [:each | each filedIn]).