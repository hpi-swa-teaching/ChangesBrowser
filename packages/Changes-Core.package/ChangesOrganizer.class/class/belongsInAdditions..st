class initialization
belongsInAdditions: aChangeSet
	"Answer whether a change set belongs in the Additions category, which is fed by all change sets that are neither numbered nor in the initial release"

	^ (((self belongsInProjectsInRelease: aChangeSet) or:
		[self belongsInNumbered: aChangeSet])) not