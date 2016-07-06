running
setUp
	super setUp.
	self
		dummyClass: ChangesDummyClass new;
		changesBrowser: CHBrowser new.
	self changesBrowser testMode: true.
	self changesBrowser browserLogic testMode: true.