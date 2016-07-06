testing
testBuildingChangesBrowser
	| browser |
	browser := CHBrowser open.
	self assert: (browser isKindOf: PluggableSystemWindow).
	browser closeBoxHit.