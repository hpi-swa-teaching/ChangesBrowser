testing-functionality
testAfterLoadingChanges
	
	| browserCopy |
	
	browserCopy := self changesBrowser veryDeepCopy.
	self assert: browserCopy changeListItems size > 0.
	browserCopy updateAfterLoadingChanges.
	self assert: browserCopy changeListItems size = 0.