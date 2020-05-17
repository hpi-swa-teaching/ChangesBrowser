running
setUp

	super setUp.
	self
		dummyObject: ChangesDummyClass new;
		changesBrowser: CHBrowser new;
		afterCrashHelper: CHAfterCrashHelper new.
	self changesBrowser testMode: true.
	