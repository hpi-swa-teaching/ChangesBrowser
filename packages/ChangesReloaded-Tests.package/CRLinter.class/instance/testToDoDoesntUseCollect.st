testing-for-miscellaneous
testToDoDoesntUseCollect

	self assertNoOccurrences: (self runLinterRule: #toDoCollectRule)