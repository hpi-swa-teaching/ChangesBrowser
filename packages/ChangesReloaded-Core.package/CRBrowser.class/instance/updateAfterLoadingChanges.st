updating
updateAfterLoadingChanges
	CRSessionState instance hasAlreadyFiledIn: true.
	self changeListItems removeAll.
	self groups removeAll.
	self groupDescriptions removeAll.
	self 
		changed: #groupDescriptions;
		changed: #versionDescriptions.
	self updateAfterChangeListChange