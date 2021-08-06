testing
testDescriptionAttributes

	self assert: (CRBrowserTest hasPickedAttributes: self changeGroup description).
	
	self changeGroup unpickAll.
	self assert: (CRBrowserTest hasUnpickedAttributes: self changeGroup description).
	
	self changeGroup chooseVersionAt: 1.
	self assert: (CRBrowserTest hasPickedAttributes: self changeGroup description).

	