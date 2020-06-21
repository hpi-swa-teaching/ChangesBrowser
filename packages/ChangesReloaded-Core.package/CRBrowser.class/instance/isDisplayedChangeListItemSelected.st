accessing
isDisplayedChangeListItemSelected

	^ self displayedChangeListItems
		ifEmpty: [false]
		ifNotEmpty: [self displayedChangeListItems anySatisfy: [:each | each isSelected]]