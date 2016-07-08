testing
testResetToSelectedVersion
	| changeList |
	self loadFourthChangeFile.
	changeList := self changesBrowser imageStateListModel getWholeChangeList.
	changeList changeList do: [ :aChangeRecord | aChangeRecord fileIn.].
	self changesBrowser browserLogic resetToSelectedVersion.
	self
		assert: 'version 1' equals: (self dummyClass dummyFunction15);
		assert: 'version 1' equals: (self dummyClass dummyFunction14);
		assert: 'version 1' equals: (self dummyClass dummyFunction13);
		assert: 'version 2' equals: (self dummyClass dummyFunction12);
		should: [ self dummyClass dummyFunction11 ] raise: MessageNotUnderstood;
		should: [ self dummyClass dummyFunction16 ] raise: MessageNotUnderstood.
	self dummyClass class removeSelector: #dummyFunction15.
	self dummyClass class removeSelector: #dummyFunction14.
	self dummyClass class removeSelector: #dummyFunction13.
	self dummyClass class removeSelector: #dummyFunction12.