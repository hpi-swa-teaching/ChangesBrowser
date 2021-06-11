testing-functionality
testAfterLoadingChanges
	
	| browserCopy |
	
	browserCopy := self changesBrowser veryDeepCopy.
	self assert: browserCopy changeListItems size = 40.
	browserCopy updateAfterLoadingChanges.
	self assert: browserCopy changeListItems size = 0.