updating
updateChangeListViewWith: aChangeList
	"einziger möglicher zugriff auf die buttons via dependents at: 9. außerdem wird update waehrend initialize aufgerufen, wo noch keine ui existiert --> kein button existiert. daher die initializes variable"
	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changesBrowser changed: #changeListContent.
	(self dependents size == 7) ifTrue: [(self dependents at: 7) enabled: false.
	self applyFilter.
	].

	

