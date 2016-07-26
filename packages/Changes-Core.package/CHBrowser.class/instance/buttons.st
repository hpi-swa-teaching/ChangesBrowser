building
buttons

	^ #(( 'Refresh' #refresh #alwaysEnabled )
		( 'Create named snapshot' #createNamedSnapshot #alwaysEnabled )
		( #searchButtonText #searchButtonClicked #alwaysEnabled )
		( 'Reset to selected image state' #resetToSelectedVersion #imageStateSelected )
		( 'Recover changes' #resetToLastVersion #alwaysEnabled )
		( 'Restore selected changes' #resetSelectedMethods #changeSelected )
		( 'Reset to time' #resetToTime #alwaysEnabled ))