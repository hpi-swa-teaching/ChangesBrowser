initialization
initializeBrowseCurrentButton

	self ui browseCurrentButton
		color: Color lightBlue;
		label: 'Browse';
		target: self;
		actionSelector: #browseCurrentlySelectedChangeFile.