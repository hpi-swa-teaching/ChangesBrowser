testing-functionality
testAfterLoadingChanges
	
	| browserCopy |
	
	browserCopy := self changesBrowser veryDeepCopy.
	self assert: browserCopy hasChanges.
	browserCopy updateAfterLoadingChanges.
	self assert: browserCopy hasChanges not.