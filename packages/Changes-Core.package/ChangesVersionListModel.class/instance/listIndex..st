accessing
listIndex: anInteger

	self changesBrowser 
		versionSelected: (anInteger > 0);
		contentsChanged.
	
	self
		selectedIndex: anInteger;
		changed: #listIndex.	"signal my acceptance of the change"
	anInteger > 0 ifTrue: [ self changesBrowser browseCurrentlySelectedChangeFile ]