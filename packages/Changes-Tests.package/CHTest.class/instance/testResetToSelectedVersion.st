testing
testResetToSelectedVersion
"
	| changeList |
	self loadFourthChangeFile.
	changeList := self changesBrowser imageStateListModel getWholeChangeList.
	changeList changeList do: [ :aChangeRecord | aChangeRecord fileIn.].
	self changesBrowser resetToSelectedVersion.
	self
		assert: 'version 1' equals: (self dummyObject dummyFunction15);
		assert: 'version 1' equals: (self dummyObject dummyFunction14);
		assert: 'version 1' equals: (self dummyObject dummyFunction13);
		assert: 'version 2' equals: (self dummyObject dummyFunction12);
		should: [ self dummyObject dummyFunction11 ] raise: MessageNotUnderstood;
		should: [ self dummyObject dummyFunction16 ] raise: MessageNotUnderstood.
	self dummyObject class
		removeSelector: #dummyFunction15;
		removeSelector: #dummyFunction14;
		removeSelector: #dummyFunction13;
		removeSelector: #dummyFunction12"