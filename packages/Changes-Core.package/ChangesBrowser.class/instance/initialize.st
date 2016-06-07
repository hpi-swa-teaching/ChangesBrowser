initialization
initialize

	super initialize.
	self initializeVersionList;
		changeList: ChangeList new.
	"
	self ui setupUi: self.
	self 
		initializeClosePushButton;
		initializeVersionList;
		initializeBrowseCurrentButton;
		initializeResetToVersionPushButton;
		initializeOneClickResetButton;
		initializeResetSelectedMethodsButton."