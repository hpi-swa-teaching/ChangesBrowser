testing
testBuildingChangesBrowser

	| browserWindow |
	browserWindow := CRBrowser openWith: self class mockChanges.
	self assert: (browserWindow isKindOf: PluggableSystemWindow).
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
	browserWindow closeBoxHit