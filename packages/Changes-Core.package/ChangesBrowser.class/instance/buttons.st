building
buttons
	^ #(( 'Browse version' #browseCurrentlySelectedChangeFile #versionSelected )
		( 'Reset to selected version' #resetToSelectedVersion #versionSelected )
		( 'Reset to last version' #resetToLastVersion #versionSelected )
		( 'Restore selected methods' #resetSelectedMethods #versionSelected ))