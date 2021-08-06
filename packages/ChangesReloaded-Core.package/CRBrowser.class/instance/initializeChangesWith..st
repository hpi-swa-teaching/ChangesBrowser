initialize-release
initializeChangesWith: aMultiByteFileStream

	self
		changeListItems: (self class changesToDisplayFrom: aMultiByteFileStream);
		groupChangeListItems;
		changedChangeList.