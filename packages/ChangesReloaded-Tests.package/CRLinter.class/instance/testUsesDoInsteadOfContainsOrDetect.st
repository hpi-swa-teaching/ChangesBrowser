testing-for-miscellaneous
testUsesDoInsteadOfContainsOrDetect

	self assertNoOccurrences: (self runLinterRule: #smallLintDetectContains)