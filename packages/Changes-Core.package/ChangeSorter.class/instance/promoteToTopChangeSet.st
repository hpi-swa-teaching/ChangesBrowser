changeSet menu
promoteToTopChangeSet
	"Move the selected change-set to the top of the list"

	self class promoteToTop: myChangeSet.
	(parent ifNil: [self]) modelWakeUp