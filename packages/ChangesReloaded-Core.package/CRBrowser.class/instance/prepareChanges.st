initialize-release
prepareChanges

	self
		changeListItems: (self class getRelevantChangeListItemsFrom: self changesFileStream);
		pickAllChangeListItems;
		groupChangeListItems;
		changedChangeList.