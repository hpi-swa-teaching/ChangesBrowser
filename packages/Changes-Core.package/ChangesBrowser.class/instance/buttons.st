building
buttons
	^ #(( 'Browse version' #browseCurrentlySelectedChangeFile #versionSelected )
		( 'Reset to selected version' #resetToSelectedVersion #versionSelected )
		( 'Reset to last version' #resetToLastVersion #true )
		( 'Restore selected methods' #resetSelectedMethods #changeSelected )
		( 'Refresh' #refresh #true )
		( 'Reset to time' #openResetToTimeWindow #true))