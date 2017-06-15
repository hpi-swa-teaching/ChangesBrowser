running
setUp

	super setUp.
	self
		dummyObject: ChangesDummyClass new;
		changesBrowser: CHBrowser new.
	self changesBrowser changesBrowserLogic testMode: true.
	self changesBrowserLogic: self changesBrowser changesBrowserLogic.