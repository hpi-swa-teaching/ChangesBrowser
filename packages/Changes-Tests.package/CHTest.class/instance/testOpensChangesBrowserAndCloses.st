testing-afterCrash
testOpensChangesBrowserAndCloses
	|window achelper|
	window := CHAfterCrashHelper open.
	self assert:  (World submorphs contains: [:a | (a model class) = CHAfterCrashHelper]).
	achelper := window model.
	achelper browseChanges.
	self assert:  (World submorphs contains: [:a | (a model class) = CHAfterCrashHelper]) not.
	self assert:  (World submorphs contains: [:a | (a model class) = CHBrowser]). 
	(World submorphs do: [:a | ((a model class) = CHBrowser) ifTrue: [a closeBoxHit]]). 