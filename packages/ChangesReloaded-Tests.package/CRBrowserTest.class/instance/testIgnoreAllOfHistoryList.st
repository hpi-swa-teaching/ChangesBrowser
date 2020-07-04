testing-functionality
testIgnoreAllOfHistoryList
	
	self changesBrowser ignoreAllOfHistoryList.
	self changesBrowser historyList do: [:each | self assertNoChangeListItemSelectedFor: each]