test-for-bugs
assertNoOccurrences: aCollectionOfResultValues

	self assert: (aCollectionOfResultValues allSatisfy: [ :numberOfOccurrences | numberOfOccurrences = 0 ])