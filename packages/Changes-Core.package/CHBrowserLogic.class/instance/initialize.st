initialization
initialize

	super initialize.
	self
		changesFile: (SourceFiles at: 2);
		initializeVersionList;
		changeList: CHChangeListModel new;
		testMode: false;
		searchEnabled: false;
		registerForSystemChangeNotifications.