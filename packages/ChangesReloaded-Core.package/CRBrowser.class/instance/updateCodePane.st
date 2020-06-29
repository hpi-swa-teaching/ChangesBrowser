updating
updateCodePane

	self selectedDisplayedChangeListItems
		ifEmpty: [self contents: '']
		ifNotEmpty: [self contents: self selectedDisplayedChangeListItems first string].
	self contentsChanged