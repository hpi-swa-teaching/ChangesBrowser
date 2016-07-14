initialization
initialize
	| browserLogic |
	browserLogic := CHBrowserLogic new.
	browserLogic changesBrowser: self.
	super initialize.
	self
		changesBrowserLogic: browserLogic;
		filterSymbol: #all;
		imageStateSelected: true;
		changeSelected: false.