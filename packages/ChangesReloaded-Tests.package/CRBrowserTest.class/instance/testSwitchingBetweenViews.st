testing
testSwitchingBetweenViews

	self browserWindow: self changesBrowser switchToDetailedView.
	self assert: (World submorphs contains: [:a | (a model class) = CHBrowser]).
	self assert:  (World submorphs contains: [:a | (a model class) = CRBrowser]) not.
	
	self browserWindow: self changesBrowser switchToSimpleView.
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
	self assert:  (World submorphs contains: [:a | (a model class) = CHBrowser]) not