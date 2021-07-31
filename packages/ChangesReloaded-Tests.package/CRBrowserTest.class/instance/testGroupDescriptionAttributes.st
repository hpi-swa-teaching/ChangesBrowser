testing-ui
testGroupDescriptionAttributes

	self selectFirstChangeListItem.
	self changesBrowser chooseVersionsInGroup.
	self assertCorrectPickedAttributes: self changesBrowser groupDescriptions first.
	self changesBrowser versionIndex: 0.
	self changesBrowser chooseVersionsInGroup.
	self assertCorrectUnpickedAttributes: self changesBrowser groupDescriptions first