testing-functionality
testLoadWithoutPicking
	
	| changeListItems |
	changeListItems := self changesBrowser changeListItems.
	
	self assert: self changesBrowser hasChanges.
	self changesBrowser
		unpickAllChanges;
		loadPickedChanges.
	self deny: self changesBrowser hasChanges.
	self assert: (changeListItems noneSatisfy: [:each | each filedIn]).