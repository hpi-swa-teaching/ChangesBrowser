initialization
initializeBrowseCurrentButton

	self
		connect: self ui browseCurrentButton
		signal: #clicked:
		to: self
		selector: #browseCurrentlySelectedChangeFile