running
setUp

	super setUp.
	self
		dummyObject: ChangesDummyClass new;
		changesBrowser: CHBrowser new.
	self changesBrowserLogic: self changesBrowser changesBrowserLogic.
	self changesBrowserLogic testMode: true.
	