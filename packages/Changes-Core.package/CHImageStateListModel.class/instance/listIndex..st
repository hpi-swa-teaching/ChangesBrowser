accessing
listIndex: anInteger

	self changesBrowser contentsChanged.
	self
		selectedIndex: anInteger;
		changed: #listIndex.
	anInteger > 0 ifTrue: [ self browseFile ]