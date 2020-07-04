test-for-miscellaneous
testExcessiveInheritanceDepth

	self assertNoOccurrences: (self runLinterRule: #smallLintExcessiveInheritance)