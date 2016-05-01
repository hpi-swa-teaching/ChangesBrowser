class initialization
belongsInMyInitials: aChangeSet
	"Answer whether a change set belongs in the MyInitials category. "

	^ aChangeSet name endsWith: ('-', Utilities authorInitials)