testing-ui
testCorrectHistoryListItemsSelectedWhenPicked

	self
		click: MouseEvent redButton at: self historyListMorph bounds origin + (1 @ 1) in: self world;
		assert: (self changesBrowser historyListSelectionIndex = 1)