running
setUp

	| changesBrowser |
	changesBrowser := CRBrowser newWith: CRFakeFileStream mockChangesFileStream.
	self changeGroup: ( changesBrowser groups at: 5).
	