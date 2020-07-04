testing-utils
assertAll: aCollectionOfResultValues areBelowThreshold: aNumber

	self assert: (aCollectionOfResultValues allSatisfy: [:resultValue | resultValue < aNumber])