updating
updatePickButton

	self pickButton enabled: self hasSelectedChangeListItem.
	self hasSelectedChangeListItem
		ifTrue: [self selectedChangeListItem isPicked
					ifTrue: [self setButtonContentToUnpick]
					ifFalse: [self setButtonContentToPick]]