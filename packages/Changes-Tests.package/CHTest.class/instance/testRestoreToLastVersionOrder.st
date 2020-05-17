as yet unclassified
testRestoreToLastVersionOrder
	self dummyObject class
 		removeSelector: #functionOrder1;
 		removeSelector: #functionOrder2;
 		removeSelector: #functionOrder3;
 		removeSelector: #functionOrder4.
 	self loadNinthChangeFile.
 	self changesBrowser resetToLastVersion.
	"the fuctions where first x then i changed them and then they were then x "
	 self
		assert: 'then 11' equals: (self dummyObject functionOrder1);
		assert: 'first 2' equals: (self dummyObject functionOrder2);
 		assert: 'then 33' equals: (self dummyObject functionOrder3);
 		assert: 'allways 4' equals: (self dummyObject functionOrder4).
	
 	