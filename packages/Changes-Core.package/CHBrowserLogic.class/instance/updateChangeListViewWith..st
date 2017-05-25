updating
updateChangeListViewWith: aChangeList
	"einziger möglicher zugriff auf die buttons via dependents at: 9. außerdem wird update während initialize aufgerufen, wow noch keine ui --> kein button existiert. daher die initializes variable"
	self changesBrowser initializes ifFalse: [(self changesBrowser dependents at: 9) enabled: false].
	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changesBrowser changed: #changeListList.

	

