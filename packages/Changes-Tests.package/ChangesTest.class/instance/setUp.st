running
setUp
	super setUp.
	dummyClass := ChangesDummyClass new.
	self changesBrowser: ChangesBrowser new.
	self changesBrowser testMode: true.