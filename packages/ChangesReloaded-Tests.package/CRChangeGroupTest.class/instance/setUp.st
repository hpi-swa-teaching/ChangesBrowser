running
setUp

	| changesBrowser |
	super setUp.
	CRSessionState reset.
	changesBrowser := CRBrowser newWith: CRFakeFileStream mockChangesFileStream.
	self changeGroup: ( changesBrowser groups at: 5).
	