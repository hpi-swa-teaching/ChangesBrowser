testing-functionality
testCorrectHistoryListItemsSelectedOnInitialization

	self changesBrowser historyList do: [:each | self assertLatestChangeListItemSelectedFor: each]