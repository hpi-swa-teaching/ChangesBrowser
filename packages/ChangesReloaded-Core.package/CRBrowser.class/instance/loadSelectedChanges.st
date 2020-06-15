button-actions
loadSelectedChanges
	
	self selectedItems do: [ :each |
		each changeRecord fileIn ]