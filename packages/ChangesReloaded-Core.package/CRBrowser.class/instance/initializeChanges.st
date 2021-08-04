initialize-release
initializeChanges

	self
		changeListItems: (self class changesToDisplayFrom: self changesFileStream);
		groupChangeListItems;
		changedChangeList.