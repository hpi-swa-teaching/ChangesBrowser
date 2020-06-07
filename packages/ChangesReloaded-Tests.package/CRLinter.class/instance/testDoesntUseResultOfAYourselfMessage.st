testing-for-miscellaneous
testDoesntUseResultOfAYourselfMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintYourselfNotUsed)