test-for-intention-revealing
testDoesntUseTheResultOfACollectOrSelect

	self assertNoOccurrences: (self runLinterRule: #smallLintCollectSelectNotUsed)