testing
testBuildingChangesBrowser

	| browserWindow |
	browserWindow := CRBrowser open.
	self assert: (browserWindow isKindOf: PluggableSystemWindow).
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
	browserWindow closeBoxHit