initialization
initialize
	| browserLogic |
	browserLogic := CHBrowserLogic new.
	browserLogic changesBrowser: self.
	super initialize.
	self
		changesBrowserLogic: browserLogic;
		imageStateSelected: true;
		changeSelected: false.