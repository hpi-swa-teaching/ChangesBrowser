testing
testResetToTime

	self loadThirdChangeFile.
	self changesBrowser resetToLastVersion.
	self
		assert: 'version 1' equals: (self dummyClass dummyFunction4);
		assert: 'version 4' equals: (self dummyClass dummyFunction2).
	self changesBrowser resetToTime: (TimeStamp fromString: '21 June 2016 2:29:00 pm').
	self
		assert: 'version 2' equals: (self dummyClass dummyFunction2);
		should: [ self dummyClass dummyFunction3 ] raise: MessageNotUnderstood;
		should: [ self dummyClass dummyFunction4 ] raise: MessageNotUnderstood.