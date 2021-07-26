testing
testOpensChangesBrowserAndCloses

	self assert:  (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]).
	self afterCrashHelper browseChanges.
	self assert:  (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]) not.
	self assert:  (World submorphs contains: [:a | (a model class) = CRBrowser]). 
	(World submorphs do: [:a | ((a model class) = CRBrowser) ifTrue: [a closeBoxHit]]). 