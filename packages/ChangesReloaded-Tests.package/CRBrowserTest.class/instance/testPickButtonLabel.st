testing-functionality
testPickButtonLabel
	
	self assert: (self changesBrowser pickButtonLabel = 'Pick or unpick changes').
	
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser pickButtonLabel = 'Pick').
	
	self changesBrowser changeListItems first pick.
	self changesBrowser changeListSelectionIndex: 1.
	self assert: (self changesBrowser pickButtonLabel = 'Unpick')