changeSet menu
openChangeSetBrowser
	"Open a ChangeSet browser on the current change set"
	ToolBuilder open: (ChangeSetBrowser new myChangeSet: myChangeSet)