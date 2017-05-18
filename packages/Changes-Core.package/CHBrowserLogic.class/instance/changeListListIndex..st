accessing-changeList
changeListListIndex: aValue

	self changesBrowser changeSelected:
		(((self changeList listSelections count: [:bool | bool]) <= 1)
		and: [aValue = 0]) not.
	self changesBrowser contentsChanged.
	"DIE ZEILE HIER DRUNTER IST GANZ MIES, ICH GREIFE ÜBER DEPENDENTS AUF EINEN SUBMORPH ZU"
	(self changesBrowser dependents at: 9) enabled: self changesBrowser changeSelected.
	^ self changeList listIndex: aValue