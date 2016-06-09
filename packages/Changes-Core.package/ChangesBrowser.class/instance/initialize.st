initialization
initialize

	super initialize.
	self
		initializeVersionList;
		changeList: ChangeList new;
		changeSelected: false.