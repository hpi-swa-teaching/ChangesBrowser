running
setUp

	super setUp.
	CRSessionState reset.
	self browserWindow: (CRBrowser openWith: CRFakeFileStream mockChangesFileStream).
	self changesBrowser changeListItems do: [:each | 
		each changeRecord: (each changeRecord as: CRFakeChangeRecord)].
	self changesBrowser unpickAllChanges.
