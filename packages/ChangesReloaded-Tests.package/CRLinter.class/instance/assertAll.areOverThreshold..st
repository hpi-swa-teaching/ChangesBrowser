testing-utils
assertAll: aCollectionOfResultValues areOverThreshold: aNumber

	self assert: (aCollectionOfResultValues allSatisfy: [ :resultValue | resultValue > aNumber ])