menu actions
deselectAll 
	"Deselect all items in the list pane, and clear the code pane"

	self listIndex: 0.
	self listSelections atAllPut: false.
	self changed: #allSelections.
	self contentsChanged