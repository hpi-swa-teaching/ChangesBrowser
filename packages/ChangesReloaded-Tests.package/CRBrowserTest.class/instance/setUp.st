running
setUp

	super setUp.
	self browserWindow: (CRBrowser openWith: CRFakeFileStream mockChangesFileStream).
	self changesBrowser changeListItems do: [:each | each isPicked: false]
