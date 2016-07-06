initialization
initialize
|browserLogic|
browserLogic := CHBrowserLogic new.
browserLogic browser: self.
	super initialize.
	self
		browserLogic: browserLogic;
		versionSelected: true;
		changeSelected: false;
		testMode: false.