access
showChangeSet: chgSet

	myChangeSet == chgSet ifFalse: [
		myChangeSet := chgSet.
		currentClassName := nil.
		currentSelector := nil].
	self changed: #relabel.
	self changed: #currentCngSet.	"new -- list of sets"
	self changed: #mainButtonName.	"old, button"
	self changed: #classList.
	self changed: #messageList.
	self setContents.
	self contentsChanged.