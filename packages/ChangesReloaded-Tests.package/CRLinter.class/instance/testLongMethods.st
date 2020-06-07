test-for-bugs
testLongMethods

	self assertNoOccurrences: (self runLinterRule: #longMethods)