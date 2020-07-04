test-unnecessary-code
testUnnecessaryAssignmentToATemporaryVariable

	self assertNoOccurrences: (self runLinterRule: #unnecessaryAssignmentRule:)