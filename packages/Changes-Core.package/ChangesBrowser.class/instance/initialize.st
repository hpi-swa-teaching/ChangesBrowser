initialization
initialize

	super initialize.
	self
		initializeVersionList;
		changeList: ChangeList new;
		versionSelected: true;
		changeSelected: false.