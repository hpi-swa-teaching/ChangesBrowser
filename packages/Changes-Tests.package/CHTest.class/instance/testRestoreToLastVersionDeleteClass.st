as yet unclassified
testRestoreToLastVersionDeleteClass
 	 self loadEighthChangeFile.
 	 self changesBrowser resetToLastVersion.
	 self
		should: [ self dummyObject mockMethod1 ] raise: MessageNotUnderstood;
		should: [ self dummyObject mockMethod2 ] raise: MessageNotUnderstood.
 	