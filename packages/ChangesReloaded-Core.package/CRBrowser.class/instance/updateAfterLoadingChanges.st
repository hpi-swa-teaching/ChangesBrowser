updating
updateAfterLoadingChanges

	self changeListItems removeAll.
	self changeGroups removeAll.
	self 
		changed: #groupList;
		changed: #versionList.
	self updateAfterChangeListChange