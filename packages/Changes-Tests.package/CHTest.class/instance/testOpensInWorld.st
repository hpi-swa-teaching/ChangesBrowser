testing-afterCrash
testOpensInWorld
	|window|
	window :=	CHAfterCrashHelper open.
	self assert: (World submorphs contains: [:a | (a model class) = CHAfterCrashHelper]).
	window delete.
	self assert:  (World submorphs contains: [:a | (a model class) = CHAfterCrashHelper]) not.