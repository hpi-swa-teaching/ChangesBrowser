accessing
selectedHistoryListItem

	^ self historyList at: (self historyListSelectionIndex) ifAbsent: [nil]