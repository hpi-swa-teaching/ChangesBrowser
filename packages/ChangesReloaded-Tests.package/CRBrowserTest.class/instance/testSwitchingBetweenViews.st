testing-ui
testSwitchingBetweenViews

	self 
		browserWindow: self changesBrowser switchToDetailedView;
		assert: (World submorphs contains: [:a | (a model class) = CHBrowser]);
		deny:  (World submorphs contains: [:a | (a model class) = CRBrowser]);

		browserWindow: self changesBrowser switchToSimpleView;
		assert: (World submorphs contains: [:a | (a model class) = CRBrowser]);
		deny:  (World submorphs contains: [:a | (a model class) = CHBrowser]).