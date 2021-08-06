testing-ui
testBuildingChangesBrowser

	self 
		assert: (self browserWindow isKindOf: PluggableSystemWindow);
		assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
