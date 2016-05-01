init & update
changeListButtonSpecs

	^#(
		('compare to current'
		compareToCurrentVersion
		'opens a separate window which shows the text differences between the selected version and the current version')

		('revert'
		fileInSelections
		'reverts the method to the version selected')

		('remove from changes'
		removeMethodFromChanges
		'remove this method from the current change set')

		('help'
		offerVersionsHelp
		'further explanation about use of Versions browsers')
		)