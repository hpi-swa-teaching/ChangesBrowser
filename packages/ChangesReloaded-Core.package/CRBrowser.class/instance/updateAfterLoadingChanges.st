updating
updateAfterLoadingChanges

	CRSessionState instance hasAlreadyFiledIn: true.
	self changeListItems removeAll.
	self changeGroups removeAll.
	self changeGroupDescriptions removeAll.
	self 
		changed: #groupList;
		changed: #versionDescriptions.
	self updateAfterChangeListChange