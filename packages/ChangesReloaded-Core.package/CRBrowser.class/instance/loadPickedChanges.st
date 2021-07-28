button-actions
loadPickedChanges

	self fileInPickedChanges.
	CRSessionState instance hasAlreadyFiledIn: true.
	
	self 
		initializeChanges;
		askToSave.