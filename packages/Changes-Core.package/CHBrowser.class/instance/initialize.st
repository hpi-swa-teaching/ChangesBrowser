initialization
initialize
	| browserLogic |
	browserLogic := CHBrowserLogic new.
	browserLogic changesBrowser: self.
	super initialize.
	self
		filterSymbol: #all;
		changesBrowserLogic: browserLogic;
		imageStateSelected: true;
		changeSelected: false.