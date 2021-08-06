testing
testBrowseChanges

	self assert:  (World submorphsSatisfying: [:a | (a model class) = CRAfterCrashHelper]) notEmpty.
	
	self afterCrashHelper browseChanges.
	self assert:  (World submorphsSatisfying: [:a | (a model class) = CRAfterCrashHelper]) isEmpty.
	self assert:  (World submorphsSatisfying: [:a | (a model class) = CRBrowser]) notEmpty.
	
	(World submorphsDo: [:a | ((a model class) = CRBrowser) 
		ifTrue: [a closeBoxHit]]).