testing-functionality
testPickButtonLabel
	
	self assert: 'Choose Versions' equals: self changesBrowser pickButtonLabel.
	
	self selectFirstChangeListItem.
	self assert: 'Choose This Version' equals: self changesBrowser pickButtonLabel.
	
	self changesBrowser versionIndex: 0.
	self assert: 'Reject All Versions' equals: self changesBrowser pickButtonLabel.