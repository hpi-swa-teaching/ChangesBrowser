testing-for-miscellaneous
testUsesDoInsteadOfCollectOrSelect

	self assertNoOccurrences: (self runLinterRule: #collectionProtocolRule)