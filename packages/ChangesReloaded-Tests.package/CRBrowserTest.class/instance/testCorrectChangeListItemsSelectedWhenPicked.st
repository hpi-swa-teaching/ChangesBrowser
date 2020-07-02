testing
testCorrectChangeListItemsSelectedWhenPicked

	self click: MouseEvent redButton at: self historyListMorph bounds origin + (1@1) in: self world.
	self click: MouseEvent redButton at: self changeListMorph bounds origin + (1@20) in: self world.
	self assert: (self changesBrowser changeListSelectionIndex = 2)