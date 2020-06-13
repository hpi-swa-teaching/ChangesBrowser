test-for-intention-revealing
testUsesDoInsteadOfCollectOrSelect

	self assertNoOccurrences: (self runLinterRule: #collectionProtocolRule:)