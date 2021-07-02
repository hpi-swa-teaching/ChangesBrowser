testing-functionality
testPickButtonLabel
	
	self assert: (self changesBrowser pickButtonLabel = 'Pick or unpick changes').
	
	self selectFirstChangeListItem.
	self assert: (self changesBrowser pickButtonLabel = 'Pick').
	
	self changesBrowser selectedChangeListItem pick.
	self selectFirstChangeListItem.
	self assert: (self changesBrowser pickButtonLabel = 'Unpick')