testing
testCorrectItemsSelectedOnInitialization
	
	self assert: (self changesBrowser historyListSelectionIndex = 0).
	self changesBrowser historyList do: [:each | self assertLatestChangeListItemSelectedFor: each]