test-for-miscellaneous
dontTestMethodComments
	"since we can't find any spelling mistakes we are taking this out"

	self assertNoOccurrences: (self runLinterRule: #smallLintMethodCommentsSpelling)