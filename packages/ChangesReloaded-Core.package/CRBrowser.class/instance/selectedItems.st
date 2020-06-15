accessing
selectedItems

	^ self changeListItems select: [ :each | each isSelected ]