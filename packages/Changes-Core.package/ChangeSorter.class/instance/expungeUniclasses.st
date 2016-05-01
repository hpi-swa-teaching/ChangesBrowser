changeSet menu
expungeUniclasses
	"remove all memory of uniclasses in the receiver"

	self okToChange ifFalse: [^ self].
	myChangeSet expungeUniclasses.
	self changed: #classList.
	self changed: #messageList.

