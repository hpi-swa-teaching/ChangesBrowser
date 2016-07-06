testing
testResetToSelectedVersion

	self loadFourthChangeFile.
	self changesBrowser browserLogic resetToSelectedVersion.
	self
		assert: 'version 1' equals: (self dummyClass dummyFunction15);
		assert: 'version 1' equals: (self dummyClass dummyFunction14);
		assert: 'version 1' equals: (self dummyClass dummyFunction13);
		assert: 'version 2' equals: (self dummyClass dummyFunction12);
		should: [ self dummyClass dummyFunction11 ] raise: MessageNotUnderstood;
		should: [ self dummyClass dummyFunction16 ] raise: MessageNotUnderstood.