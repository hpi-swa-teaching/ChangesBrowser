testing
testDescriptionTextAttributes

	self specificChangeListItem1 pick.
	self assertPickedAttributesOf: self specificChangeListItem1 versionDescription.
	
	self specificChangeListItem1 unpick.
	self assertUnpickedAttributesOf: self specificChangeListItem1 versionDescription.