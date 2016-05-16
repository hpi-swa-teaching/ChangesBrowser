initialization
initialize

	super initialize.
	self ui setupUi: self.
	self 
		initializeClosePushButton;
		initializeVersionList;
		initializeBrowseCurrentButton;
		initializeResetToVersionPushButton.