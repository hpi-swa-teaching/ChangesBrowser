testing-toolbuilder
testResetToTime

	self loadThirdChangeFile.
	self changesBrowserLogic  resetToLastVersion.
	self
		assert: 'version 1' equals: (self dummyObject dummyFunction4);
		assert: 'version 4' equals: (self dummyObject dummyFunction2).
	self changesBrowser changesBrowserLogic resetToTime: (TimeStamp fromString: '21 June 2016 2:29:00 pm').
	self
		assert: 'version 2' equals: (self dummyObject dummyFunction2);
		should: [ self dummyObject dummyFunction3 ] raise: MessageNotUnderstood;
		should: [ self dummyObject dummyFunction4 ] raise: MessageNotUnderstood