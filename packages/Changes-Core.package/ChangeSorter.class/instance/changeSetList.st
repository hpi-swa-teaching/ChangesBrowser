changeSet menu
changeSetList
	"Answer a list of ChangeSet names to be shown in the change sorter."

	^ChangeSet allChangeSets reverse collect: [:cs | cs name]