testing-ui
testBuildingChangesBrowser

	self assert: (self browserWindow isKindOf: PluggableSystemWindow).
	self assert: (World submorphsSatisfying: [:a | (a model class) = CRBrowser]) notEmpty.
