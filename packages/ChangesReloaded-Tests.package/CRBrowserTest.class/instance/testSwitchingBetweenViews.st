testing
testSwitchingBetweenViews

	| browserWindow |
	browserWindow := CRBrowser openWith: self class mockChanges.
	browserWindow := browserWindow model switchToDetailedView.
	self assert: (World submorphs contains: [:a | (a model class) = CHBrowser]).
	self assert:  (World submorphs contains: [:a | (a model class) = CRBrowser]) not.
	
	browserWindow := browserWindow model switchToSimpleView.
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
	self assert:  (World submorphs contains: [:a | (a model class) = CHBrowser]) not.
	
	browserWindow closeBoxHit