initialization
initializeBrowseVersionsButton

	self
		connect: self ui browseVersionsButton
		signal: #clicked:
		to: self
		selector: #browseVersions