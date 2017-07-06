running
setUp

	super setUp.
	self
		dummyObject: ChangesDummyClass new;
		changesBrowser: CHBrowser new.
	self changesBrowser testMode: true.
	