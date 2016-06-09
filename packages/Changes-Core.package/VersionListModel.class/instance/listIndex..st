accessing
listIndex: anInteger

	self selectedIndex: anInteger.
	self changed: #listIndex.	"signal my acceptance of the change"