test-for-miscellaneous
testUsesWhiteTrueInsteadOfToDo

	self assertNoOccurrences: (self runLinterRule: #smallLintWhileTrue)