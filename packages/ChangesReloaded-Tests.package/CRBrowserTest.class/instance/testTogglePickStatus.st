testing-functionality
testTogglePickStatus

	self changesBrowser groupIndex: 5.
	self changesBrowser versionIndex: 2.
	self changesBrowser chooseVersionsInGroup.
	self assert: {false . true . true} asOrderedCollection equals: (self changesBrowser selectedGroup collect: [:each | each isPicked]).
	
	self changesBrowser versionIndex:  0.
	self changesBrowser chooseVersionsInGroup.
	self assert: (self changesBrowser selectedGroup noneSatisfy: [:each | each isPicked])
