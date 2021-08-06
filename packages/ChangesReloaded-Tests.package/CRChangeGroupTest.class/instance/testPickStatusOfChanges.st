testing
testPickStatusOfChanges

	self changeGroup chooseVersionAt: 2.
	self assert: {false . true . true} asOrderedCollection equals: self changeGroup collectIsPicked.
	
	self changeGroup unpickAll.
	self assert: {false . false . false} asOrderedCollection equals: self changeGroup collectIsPicked.