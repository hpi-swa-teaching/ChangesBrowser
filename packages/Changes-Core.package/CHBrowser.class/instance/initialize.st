initialization
initialize

	| browserLogic |
	super initialize.
	browserLogic := CHBrowserLogic newForChangesBrowser: self.
	self
		changesBrowserLogic: browserLogic;
		imageStateSelected: true;
		changeSelected: false.
	self changesBrowserLogic imageStateListModel listIndex: 1.