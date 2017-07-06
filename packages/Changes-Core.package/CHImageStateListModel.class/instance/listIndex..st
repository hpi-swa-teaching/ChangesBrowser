accessing
listIndex: anInteger

	self changesBrowser contentsChanged.
	self
		selectedIndex: anInteger;
		changed: #listIndex.	"signal my acceptance of the change"
	anInteger > 0 ifTrue: [ self browseFile ]