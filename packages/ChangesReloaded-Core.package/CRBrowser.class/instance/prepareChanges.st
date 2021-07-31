initialize-release
prepareChanges

	self
		changeListItems: (self class getRelevantChangeListItemsFrom: self changesFileStream);
		pickAll;
		groupChangeListItems;
		changedChangeList.