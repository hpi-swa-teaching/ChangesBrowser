testing
testCorrectHistoryListItemsSelectedWhenPicked

	| browserWindow |
	browserWindow := CRBrowser openWith: self class mockChanges.
	self changesBrowser: browserWindow model.
	
	self assert: (self changesBrowser historyListSelectionIndex = 0).
	self changesBrowser historyList do: [:each | self assertLatestChangeListItemSelectedFor: each].

	browserWindow closeBoxHit