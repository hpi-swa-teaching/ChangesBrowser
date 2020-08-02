testing-ui
testCorrectChangeListItemsSelectedWhenClicked

	self
		click: MouseEvent redButton at: self changeListMorph bounds origin + (1 @ 1) in: self world;
		assert: (self changesBrowser changeListSelectionIndex = 1)