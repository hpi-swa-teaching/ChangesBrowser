building
buttons

	^ #(( 'Switch to simple view' #switchToSimpleView #alwaysEnabled 'Switch to a simpler version of this window')
		( 'Refresh' #refresh #alwaysEnabled 'Update list of changes')
		( #searchButtonText #searchButtonClicked #alwaysEnabled 
		'Search for a state to recover')
		( 'Restore selected changes' #resetSelectedMethods #changeSelected 
		'Recover only the selected changes in the right list' )
		( 'Filter' #showFilterMenu #alwaysEnabled 'FIlter the changes list'))