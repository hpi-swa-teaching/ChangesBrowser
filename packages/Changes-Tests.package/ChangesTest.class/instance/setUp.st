running
setUp
	super setUp.
	self
		dummyClass: ChangesDummyClass new;
		changesBrowser: ChangesBrowser new.
	self changesBrowser testMode: true.