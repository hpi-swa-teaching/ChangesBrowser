building
buttons
	^ #(( 'Browse image state' #browseCurrentlySelectedChangeFile #versionSelected )
		( 'Refresh' #refresh #true )
		( 'Reset to selected image state' #resetToSelectedVersion #versionSelected )
		( 'Reset after crash' #resetToLastVersion #true )
		( 'Restore selected changes' #resetSelectedMethods #changeSelected )
		( 'Reset to time' #openResetToTimeWindow #true))