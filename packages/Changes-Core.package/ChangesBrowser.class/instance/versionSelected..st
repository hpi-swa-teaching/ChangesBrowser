accessing
versionSelected: bool
	versionSelected := bool.
	bool ifFalse: [ self changeList: ChangeListForChangesBrowser new ]