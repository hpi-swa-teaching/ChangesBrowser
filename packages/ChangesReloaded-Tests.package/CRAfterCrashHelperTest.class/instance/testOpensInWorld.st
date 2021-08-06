testing
testOpensInWorld

	self assert: (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]).
	self afterCrashHelper closeWindow.
	self deny:  (World submorphs contains: [:a | (a model class) = CRAfterCrashHelper]).