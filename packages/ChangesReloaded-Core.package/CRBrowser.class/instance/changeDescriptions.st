accessing
changeDescriptions

	^ self changeListItems collect: [:each | each changeRecord text]