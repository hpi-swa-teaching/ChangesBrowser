test-for-bugs
assertAll: aCollectionOfResultValues areBelowThreshold: aNumber

	self halt.
	self assert: (aCollectionOfResultValues allSatisfy: [ :resultValue | resultValue < aNumber ])