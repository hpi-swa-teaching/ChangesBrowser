initialize-release
initializeChanges

	self
		changeListItems: (self class getChangeListItemsMissingInImageFrom: self changesFileStream);
		pickAllChangeListItems;
		groupChangeListItems;
		changedChangeList.