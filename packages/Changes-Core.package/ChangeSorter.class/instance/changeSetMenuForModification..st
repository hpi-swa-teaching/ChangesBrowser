changeSet menu
changeSetMenuForModification: aMenu

	aMenu addLine.

	aMenu add: 'file into new...' action: #fileIntoNewChangeSet.
	aMenu balloonTextForLastItem: 
'Load a fileout from disk and place its changes into a new change set (seldom needed -- much better to do this from a file-list browser these days.)'.

	aMenu add: 'reorder all change sets' action: #reorderChangeSets.
	aMenu balloonTextForLastItem:
'Applies a standard reordering of all change-sets in the system -- at the bottom will come the sets that come with the release; next will come all the numbered updates; finally, at the top, will come all other change sets'.


	^ aMenu