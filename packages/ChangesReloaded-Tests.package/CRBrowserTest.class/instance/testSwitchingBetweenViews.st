testing-ui
testSwitchingBetweenViews

	self browserWindow: self changesBrowser switchToDetailedView.
	self assert: (World submorphs contains: [:a | (a model class) = CHBrowser]).
	self deny:  (World submorphs contains: [:a | (a model class) = CRBrowser]).
	
	self	browserWindow: self changesBrowser switchToSimpleView.
	self assert: (World submorphs contains: [:a | (a model class) = CRBrowser]).
	self deny:  (World submorphs contains: [:a | (a model class) = CHBrowser]).