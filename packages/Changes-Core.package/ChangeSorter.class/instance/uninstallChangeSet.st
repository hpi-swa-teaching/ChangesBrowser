changeSet menu
uninstallChangeSet
	"Attempt to uninstall the current change set, after confirmation."

	self okToChange ifFalse: [^ self].
	(self confirm: 'Uninstalling a changeSet is unreliable at best.
It will only work if the changeSet consists only of single
changes, additions and removals of methods, and if
no subsequent changes have been to any of them.
No changes to classes will be undone.
The changeSet will be cleared after uninstallation.
Do you still wish to attempt to uninstall this changeSet?')
	ifFalse: [^ self].

	myChangeSet uninstall.
	self changed: #relabel.
	self changed: #classList.
	self changed: #messageList.
	self setContents.
	self contentsChanged.
