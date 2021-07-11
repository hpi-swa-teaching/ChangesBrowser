testing-ui
testGroupDescriptionAttributes

	self changesBrowser changeGroupDescriptions do: 
		[:each | self assertCorrectUnpickedAttributes: each].
	self selectFirstChangeListItem.
	self changesBrowser selectedChangeListItem pick.
	self assertCorrectPickedAttributes: (self changesBrowser changeGroupDescriptions first)