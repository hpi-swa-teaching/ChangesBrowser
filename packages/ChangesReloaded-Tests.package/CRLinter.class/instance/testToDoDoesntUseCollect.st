test-for-intention-revealing
testToDoDoesntUseCollect

	self assertNoOccurrences: (self runLinterRule: #toDoCollectRule:)