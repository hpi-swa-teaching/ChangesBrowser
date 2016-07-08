building
buttons
	^ #(( 'Refresh' #refresh #alwaysEnabled )
		( 'Search image states' #openSearchWindow #searchDisabled )
		( 'Reset search' #resetSearch #searchEnabled )
		( 'Reset to selected image state' #resetToSelectedVersion #imageStateSelected )
		( 'Recover changes' #resetToLastVersion #alwaysEnabled )
		( 'Restore selected changes' #resetSelectedMethods #changeSelected )
		( 'Reset to time' #openResetToTimeWindow #alwaysEnabled ))