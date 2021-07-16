testing-functionality
testPickButtonLabel
	
	self assert: (self changesBrowser pickButtonLabel = 'Pick or unpick changes').
	
	self selectFirstChangeListItem.
	self assert: (self changesBrowser pickButtonLabel = 'Pick').
	
	self changesBrowser versionIndex: 0.
	self assert: (self changesBrowser pickButtonLabel = 'Unpick All Versions').