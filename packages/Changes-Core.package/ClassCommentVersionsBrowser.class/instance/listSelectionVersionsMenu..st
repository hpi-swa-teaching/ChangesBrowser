menu
listSelectionVersionsMenu: aMenu

	^ aMenu addTranslatedList: #(
		('compare to current'		compareToCurrentVersion		'compare selected version to the current version')
		('revert to selected version'	fileInSelections					'resubmit the selected version, so that it becomes the current version'));
	yourself
