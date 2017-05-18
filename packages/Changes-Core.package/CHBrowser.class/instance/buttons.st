building
buttons

	^ #(( 'Refresh' #refresh #alwaysEnabled 'Update list of changes')
		( 'Create named snapshot' #createNamedSnapshot #alwaysEnabled 
		'Create your own snapshot')
		( #searchButtonText #searchButtonClicked #alwaysEnabled 
		'Search for a state to recover')
		( 'Reset to selected image state' #resetToSelectedVersion #imageStateSelected 
		'Reset until selected image')
		( 'Recover changes' #resetToLastVersion #alwaysEnabled 
		'Start the recover changes process')
		( 'Restore selected changes' #resetSelectedMethods #changeSelected 
		'Recover selected Snapshots' )
		( 'Reset to time' #resetToTime #alwaysEnabled 'Recover to the given time')
		( 'Filter' #showFilterMenu #alwaysEnabled 'FIlter the changes list'))