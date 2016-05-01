menu
mainVersionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"
	<versionsMenu>

	aMenu addTranslatedList: #(
		('remove from changes'		removeMethodFromChanges	'remove this method from the current change set, if present')
		('find original change set'	findOriginalChangeSet			'locate the changeset which originally contained this version')
		-
		('toggle diffing (D)'			toggleDiffing					'toggle whether or not diffs should be shown here')
		('update list'				reformulateList					'reformulate the list of versions, in case it somehow got out of synch with reality')
		-
		('senders (n)'				browseSenders					'browse all senders of this selector')
		('implementors (m)'			browseImplementors			'browse all implementors of this selector')
		('inheritance (i)'		methodHierarchy			'browse method inheritance')
		-
		('help...'					offerVersionsHelp				'provide an explanation of the use of this tool')).
											
	^aMenu