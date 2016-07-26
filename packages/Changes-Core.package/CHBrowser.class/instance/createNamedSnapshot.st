button actions
createNamedSnapshot

	| snapshotName |
	snapshotName := UIManager default request: 'enter name of the snapshot'.
	snapshotName
		ifNotEmpty: [Smalltalk namedSnaphot: snapshotName.
					 self changesBrowserLogic refresh]