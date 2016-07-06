initialization
initialize

	super initialize.
	self
		initializeVersionList;
		changeList: CHChangeListModel new;
		testMode: false;
		changesFile: (SourceFiles at: 2);
		registerForSystemChangeNotifications.