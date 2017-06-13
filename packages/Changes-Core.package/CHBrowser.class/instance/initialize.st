initialization
initialize

	| browserLogic |
	super initialize.
	self initializes: true.
	browserLogic := CHBrowserLogic newForChangesBrowser: self.
	browserLogic imageStateSelected: true;
					changeSelected: false.
				
	self
		changesBrowserLogic: browserLogic.
	self changesBrowserLogic imageStateListModel listIndex: 1.
	self initializes: false.