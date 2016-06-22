initialization
initialize

	super initialize.
	self
		initializeVersionList;
		changeList: ChangeListForChangesBrowser new;
		versionSelected: true;
		changeSelected: false;
		testMode: false;
		changesFile: (SourceFiles at: 2).