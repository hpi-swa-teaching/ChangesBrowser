building
updatePickButton

	self selectedChangeListItem isPicked
		ifTrue: [self setButtonContentToUnpick]
		ifFalse: [self setButtonContentToPick]