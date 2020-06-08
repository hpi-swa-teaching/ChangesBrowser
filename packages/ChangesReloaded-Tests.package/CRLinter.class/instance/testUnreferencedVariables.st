testing-for-miscellaneous
testUnreferencedVariables

	self assertNoOccurrences: (self runLinterRule: #unreferencedVariable)