button-actions
fileInPickedChanges

	'ProgressBar'
		displayProgressFrom: 0
		to: self numberOfPickedChangeListItems
		during: self loadingProcess.
	
	CRSessionState instance notifyOfFileIn.
