test-for-coding-styles
testLongMethods

	self assertNoOccurrences: (self runLinterRule: #longMethods)