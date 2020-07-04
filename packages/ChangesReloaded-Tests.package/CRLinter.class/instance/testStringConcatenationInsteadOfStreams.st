test-for-miscellaneous
testStringConcatenationInsteadOfStreams

	self assertNoOccurrences: (self runLinterRule: #smallLintStringConcatenation)