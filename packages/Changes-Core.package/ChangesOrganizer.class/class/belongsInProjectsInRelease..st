class initialization
belongsInProjectsInRelease:  aChangeSet
	"Answer whether a change set belongs in the ProjectsInRelease category.  You can hand-tweak this to suit your working style.  This just covers the space of project names in the 2.9, 3.0, and 3.1a systems"

	| aString |
	^ ((aString := aChangeSet name) beginsWith: 'Play With Me') or: [self changeSetNamesInReleaseImage includes: aString]