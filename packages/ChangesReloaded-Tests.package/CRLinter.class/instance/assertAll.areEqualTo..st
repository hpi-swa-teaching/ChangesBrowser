testing-utils
assertAll: aCollectionOfResultValues areEqualTo: anObject

	self assert: (aCollectionOfResultValues allSatisfy: [:numberOfOccurrences | numberOfOccurrences = anObject])