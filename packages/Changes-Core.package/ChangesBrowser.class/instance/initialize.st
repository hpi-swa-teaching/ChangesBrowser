initialization
initialize

	super initialize.
	self ui setupUi: self.
	self 
		initializeClosePushButton;
		initializeList;
		initializeBrowseCurrentButton.