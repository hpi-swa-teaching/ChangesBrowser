initialization
initialize
	| browserLogic |
	super initialize.
	browserLogic := CHBrowserLogic newForChangesBrowser: self.
	self
		changesBrowserLogic: browserLogic;
		filterSymbol: #all;
		imageStateSelected: true;
		changeSelected: false.