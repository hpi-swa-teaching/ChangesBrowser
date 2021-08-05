testing
testBrowseChanges

	self assert:  (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]).
	
	self afterCrashHelper browseChanges.
	self deny:  (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]).
	self assert:  (World submorphs contains: [:a | (a model class) = CRBrowser]).
	
	(World submorphs do: [:a | ((a model class) = CRBrowser) ifTrue: [a closeBoxHit]]).