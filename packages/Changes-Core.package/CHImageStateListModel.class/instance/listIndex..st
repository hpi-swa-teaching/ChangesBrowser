accessing
listIndex: anInteger

	self changesBrowserLogic
		imageStateSelected: (anInteger > 0).
	self changesBrowserLogic contentsChanged.
	self
		selectedIndex: anInteger;
		changed: #listIndex.	"signal my acceptance of the change"
	anInteger > 0 ifTrue: [ self changesBrowserLogic browseCurrentlySelectedChangeFile ]