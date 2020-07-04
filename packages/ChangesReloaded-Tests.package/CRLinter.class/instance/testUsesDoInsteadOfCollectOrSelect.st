test-for-intention-revealing
testUsesDoInsteadOfCollectOrSelect
	"Wrongly triggers when grouping collection elements by adding them to a Dictionary."

	self assertNoOccurrences: (self runLinterRule: #collectionProtocolRule:)