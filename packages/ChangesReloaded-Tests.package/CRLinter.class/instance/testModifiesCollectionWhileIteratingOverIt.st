test-for-possible-bugs
testModifiesCollectionWhileIteratingOverIt

	self assertNoOccurrences: (self runLinterRule: #smallLintModifiesCollection)