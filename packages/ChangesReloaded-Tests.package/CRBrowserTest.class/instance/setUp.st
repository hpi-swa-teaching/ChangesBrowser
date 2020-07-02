running
setUp

	super setUp.
	
	self browserWindow: (CRBrowser openWith: self class mockChanges)