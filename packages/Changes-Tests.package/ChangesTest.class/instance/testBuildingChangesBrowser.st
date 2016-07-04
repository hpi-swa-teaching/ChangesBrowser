testing
testBuildingChangesBrowser
	| browser |
	browser := ChangesBrowser open.
	self assert: (browser isKindOf: PluggableSystemWindow).
	browser closeBoxHit.