running
setUp

	| changesBrowser |
	super setUp.
	changesBrowser := CRBrowser newWith: CRFakeFileStream mockChangesFileStream.
	self changeGroup: ( changesBrowser groups at: 5).
	