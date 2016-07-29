running
setUp
	super setUp.
	self
		dummyClass: ChangesDummyClass new;
		changesBrowser: CHBrowser new.
	self changesBrowser changesBrowserLogic testMode: true.