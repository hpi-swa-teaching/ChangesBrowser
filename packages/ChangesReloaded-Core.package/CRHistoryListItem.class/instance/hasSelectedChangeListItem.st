accessing
hasSelectedChangeListItem

	^ self history
		ifEmpty: [false]
		ifNotEmpty: [self history anySatisfy: [:each | each isSelected]]