testing-ui
testSwitchingBetweenViews

	self 
		browserWindow: self changesBrowser switchToDetailedView;
		assert: (World submorphs contains: [:a | (a model class) = CHBrowser]);
		assert:  (World submorphs contains: [:a | (a model class) = CRBrowser]) not;

		browserWindow: self changesBrowser switchToSimpleView;
		assert: (World submorphs contains: [:a | (a model class) = CRBrowser]);
		assert:  (World submorphs contains: [:a | (a model class) = CHBrowser]) not
