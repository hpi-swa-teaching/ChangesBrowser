test-unnecessary-code
dontTestMethodsImplementedButNotSent
	"Doesn't correctly identify all sendings of messages, so we're not using it."

	self assertNoOccurrences: (self runLinterRule: #smallLintImplementedNotSent)