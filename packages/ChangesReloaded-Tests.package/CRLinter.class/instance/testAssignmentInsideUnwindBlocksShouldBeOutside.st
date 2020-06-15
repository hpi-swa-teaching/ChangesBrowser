test-for-possible-bugs
testAssignmentInsideUnwindBlocksShouldBeOutside

	self assertNoOccurrences: (self runLinterRule: #smallLintFileBlocks)