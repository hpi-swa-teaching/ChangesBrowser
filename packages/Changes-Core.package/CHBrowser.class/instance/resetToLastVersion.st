button-actions
resetToLastVersion

	| changeList |
	changeList := self imageStateListModel getChangeListForLatestImageState changeList.
	self resetCategories: changeList;
	resetClasses: changeList;
	resetChanges: changeList;
	resetDeletes: changeList;	
	refresh.
