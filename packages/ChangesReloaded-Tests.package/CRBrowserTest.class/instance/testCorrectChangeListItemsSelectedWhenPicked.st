testing-ui
testCorrectChangeListItemsSelectedWhenPicked

	self
		click: MouseEvent redButton at: self historyListMorph bounds origin + (1 @ 1) in: self world;
		"TODO: The following might break if different font sizes are selected so we should definitely think of something there."
		click: MouseEvent redButton at: self changeListMorph bounds origin + (1 @ 20) in: self world;
		assert: (self changesBrowser changeListSelectionIndex = 2)