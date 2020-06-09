test-for-miscellaneous
testDoesntUseTheResultOfACollectOrSelect

	self assertNoOccurrences: (self runLinterRule: #smallLintCollectSelectNotUsed)