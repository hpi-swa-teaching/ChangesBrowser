testing-ui
testCorrectHistoryListItemsSelectedWhenPicked

	self click: MouseEvent redButton at: self historyListMorph bounds origin + (1@1) in: self world.
	self assert: (self changesBrowser historyListSelectionIndex = 1)