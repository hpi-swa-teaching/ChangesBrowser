class initialization
noteChangeSetsInRelease
	"Freshly compute what the change sets in the release are; to be called manually just before a release"

	ChangeSetNamesInRelease := (Project allProjects collect: [:p | p name]) asSet asOrderedCollection.

"ChangeSorter noteChangeSetsInRelease"