building
buttons
	^ #("( 'Browse image state' #browseCurrentlySelectedChangeFile #versionSelected )"
		( 'Reset to selected image state' #resetToSelectedVersion #versionSelected )
		( 'Recover changes' #resetToLastVersion #alwaysEnabled )
		( 'Restore selected changes' #resetSelectedMethods #changeSelected )
		( 'Reset to time' #openResetToTimeWindow #alwaysEnabled ))