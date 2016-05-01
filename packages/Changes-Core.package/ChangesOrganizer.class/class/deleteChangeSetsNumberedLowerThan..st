removing
deleteChangeSetsNumberedLowerThan: anInteger
	"Delete all changes sets whose names start with integers smaller than anInteger"

	self removeChangeSetsNamedSuchThat:
		[:aName | aName first isDigit and: [aName initialIntegerOrNil < anInteger]].

	"ChangesOrganizer deleteChangeSetsNumberedLowerThan: (ChangeSorter highestNumberedChangeSet name initialIntegerOrNil - 500)"
