actions
refresh
	self versionListModel list: (ChangeListForChangesBrowser browseRecentLog first).
	self updateCurrentlyShownChangeFile.
	"self class open.
	dependents first delete." "dependents first should always be the PluggableSystemWindow"