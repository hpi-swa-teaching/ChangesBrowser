accessing
listIndex: anInteger

	self changesBrowser browser
		imageStateSelected: (anInteger > 0).
	self changesBrowser contentsChanged.
	
	self
		selectedIndex: anInteger;
		changed: #listIndex.	"signal my acceptance of the change"
	anInteger > 0 ifTrue: [ self changesBrowser browseCurrentlySelectedChangeFile ]