testing-for-miscellaneous
testRedundantClassNameInSelector

	self assertNoOccurrences: (self runLinterRule: #classNameInSelector)