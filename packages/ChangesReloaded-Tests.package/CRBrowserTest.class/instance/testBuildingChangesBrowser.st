testing
testBuildingChangesBrowser

	self assert: (self browserWindow isKindOf: PluggableSystemWindow).
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser])