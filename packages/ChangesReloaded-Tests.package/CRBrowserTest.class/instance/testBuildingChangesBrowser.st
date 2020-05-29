testing
testBuildingChangesBrowser

	| browserWindow |
	browserWindow := CRBrowser open.
	self assert: (browserWindow isKindOf: PluggableSystemWindow).
	browserWindow closeBoxHit