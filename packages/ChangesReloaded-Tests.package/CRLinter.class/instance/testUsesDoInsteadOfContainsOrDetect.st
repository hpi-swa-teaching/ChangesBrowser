test-for-miscellaneous
testUsesDoInsteadOfContainsOrDetect

	self assertNoOccurrences: (self runLinterRule: #smallLintDetectContains)