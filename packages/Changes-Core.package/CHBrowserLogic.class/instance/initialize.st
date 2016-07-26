initialization
initialize

	super initialize.
	self
		changesFile: (SourceFiles at: 2);
		changeList: CHChangeListModel new;
		initializeVersionList;
		testMode: false;
		searchEnabled: false;
		registerForSystemChangeNotifications