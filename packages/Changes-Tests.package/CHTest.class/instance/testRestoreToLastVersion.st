as yet unclassified
testRestoreToLastVersion
	 self dummyObject class
 		removeSelector: #dummyFunction11;
 		removeSelector: #dummyFunction12;
 		removeSelector: #dummyFunction13;
 		removeSelector: #dummyFunction14.
 	 self loadSeventhChangeFile.
 	 self changesBrowserLogic resetToLastVersion.
	 self
		assert: 'version 1' equals: (self dummyObject dummyFunction11);
		assert: 'version 1' equals: (self dummyObject dummyFunction12);
 		assert: 'version 1' equals: (self dummyObject dummyFunction13);
 		assert: 'version 1' equals: (self dummyObject dummyFunction14).
 	