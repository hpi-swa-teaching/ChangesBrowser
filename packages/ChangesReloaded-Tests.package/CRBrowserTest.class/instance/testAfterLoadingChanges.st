testing-functionality
testAfterLoadingChanges
	
	| browserCopy |
	
	browserCopy := self changesBrowser veryDeepCopy.
	self assert: browserCopy changeListItems notEmpty.
	browserCopy updateAfterLoadingChanges.
	self assert: browserCopy changeListItems isEmpty.