initialization
initialize
	| browserLogic |
	browserLogic := CHBrowserLogic new.
	browserLogic browser: self.
	super initialize.
	self
		changesBrowserLogic: browserLogic;
		imageStateSelected: true;
		changeSelected: false.