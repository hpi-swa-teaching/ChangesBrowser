accessing
selectedChangeListItems

	^ self history select: [:each | each isSelected]