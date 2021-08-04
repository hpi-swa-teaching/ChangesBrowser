testing
testPickedStatus

	self changeGroup pickAt: 2.
	self assert: {false . true . true} asOrderedCollection equals: self changeGroup pickedStatus.
	
	self changeGroup pickAt: 0.
	self assert: {false . false . false} asOrderedCollection equals: self changeGroup pickedStatus.