test-for-possible-bugs
dontTestSendsDifferentSuperMessage
	"Our initializeWith: calls super initialize and that's fine."

	self assertNoOccurrences: (self runLinterRule: #smallLintSendsDifferentSuper)