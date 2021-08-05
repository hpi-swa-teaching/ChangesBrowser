testing-ui
testGroupIndexWhenClicked

	self
		click: MouseEvent redButton at: self changeListMorph bounds origin + (1 @ 1) in: self world;
		assert: (self changesBrowser groupIndex = 1)