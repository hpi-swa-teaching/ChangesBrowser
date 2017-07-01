initialization
initialize

	| browserLogic |
	super initialize.
	browserLogic := CHBrowserLogic newForChangesBrowser: self.
	browserLogic changeSelected: false.
				
	self
		changesBrowserLogic: browserLogic.
	self changesBrowserLogic imageStateListModel listIndex: 1.