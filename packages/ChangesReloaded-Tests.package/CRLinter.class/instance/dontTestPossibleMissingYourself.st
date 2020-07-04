test-for-possible-bugs
dontTestPossibleMissingYourself
	"we want this sometimes thooo"

	self assertNoOccurrences: (self runLinterRule: #smallLintMissingYourself)