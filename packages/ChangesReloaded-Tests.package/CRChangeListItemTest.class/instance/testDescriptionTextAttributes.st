testing
testDescriptionTextAttributes

	self specificChangeListItem1 pick.
	self assert: (CRBrowserTest hasPickedAttributes: self specificChangeListItem1 versionDescription).
	
	self specificChangeListItem1 unpick.
	self assert: (CRBrowserTest hasUnpickedAttributes: self specificChangeListItem1 versionDescription).