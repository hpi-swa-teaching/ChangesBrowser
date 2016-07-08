initialization
initialize
|browserLogic|
browserLogic := CHBrowserLogic new.
browserLogic browser: self.
	super initialize.
	self
		browserLogic: browserLogic;
		imageStateSelected: true;
		changeSelected: false.