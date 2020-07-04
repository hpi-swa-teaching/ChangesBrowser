test-unnecessary-code
testMethodJustSendsSuperMessage

	self assertNoOccurrences: (self runLinterRule: #smallLintJustSendsSuper)