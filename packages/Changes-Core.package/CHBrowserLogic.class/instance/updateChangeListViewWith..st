updating
updateChangeListViewWith: aChangeList
	"einziger möglicher zugriff auf die buttons via dependents at: 9. außerdem wird update waehrend initialize aufgerufen, wo noch keine ui existiert --> kein button existiert. daher die initializes variable"
	self changeList: aChangeList.
	self changeList
		addDependent: self;
		showAllChanges.
	self changesBrowser changed: #changeListContent.
	(self changesBrowser initializes or: [self testMode]) ifFalse: [(self changesBrowser dependents at: 9) enabled: false.
	self applyFilter.
	].

	

