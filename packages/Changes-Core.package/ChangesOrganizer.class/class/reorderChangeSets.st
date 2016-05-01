services
reorderChangeSets
	"Change the order of the change sets to something more convenient:
		First come the project changesets that come with the release.  These are mostly empty.
		Next come all numbered updates.
		Next come all remaining changesets
	In a ChangeSorter, they will appear in the reversed order."

	"ChangeSorter reorderChangeSets"

	| newHead newMid newTail |
	newHead := OrderedCollection new.
	newMid := OrderedCollection new.
	newTail := OrderedCollection new.
	ChangeSet allChangeSets do:
		[:aChangeSet |
			(self belongsInProjectsInRelease: aChangeSet)
				ifTrue:
					[newHead add: aChangeSet]
				ifFalse:
					[(self belongsInNumbered: aChangeSet)
						ifTrue:
							[newMid add: aChangeSet]
						ifFalse:
							[newTail add: aChangeSet]]].
	ChangeSet allChangeSets: newHead, newMid, newTail.
	Project current wakeUpTopWindow