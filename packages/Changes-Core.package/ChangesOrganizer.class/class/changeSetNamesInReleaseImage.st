class initialization
changeSetNamesInReleaseImage
	"Answer a list of names of project change sets that come pre-shipped in the latest sytem release.  On the brink of shipping a new release, call 'ChangeSorter noteChangeSetsInRelease'  "

	^ ChangeSetNamesInRelease ifNil:
		[ChangeSetNamesInRelease := self changeSetNamesInThreeOh]