initialization
initialize

	super initialize.
	self ui setupUi: self.
	self 
		initializeCloseButton;
		initializeList;
		initializeBrowseCurrentButton.