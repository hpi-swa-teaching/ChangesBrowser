testing-for-miscellaneous
testUnnecessaryAssignmentToATemporaryVariable

	self assertNoOccurrences: (self runLinterRule: #unnecessaryAssignmentRule)