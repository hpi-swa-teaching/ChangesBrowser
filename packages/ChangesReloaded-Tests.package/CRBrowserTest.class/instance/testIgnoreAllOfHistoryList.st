testing-functionality
testIgnoreAllOfHistoryList
	
	self
		changesBrowser ignoreAllOfHistoryList;
		changesBrowser historyList do: [:each | self assertNoChangeListItemSelectedFor: each]
