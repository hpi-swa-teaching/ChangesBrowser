menu
listSelectionVersionsMenu: aMenu
	"Fill aMenu with menu items appropriate to the receiver"
	<versionsMenu>

	listIndex > 0 ifTrue:[
		(list size > 1 ) ifTrue: [ aMenu addTranslatedList: #(
			('compare to current'		compareToCurrentVersion		'compare selected version to the current version')
			('compare to version...'	compareToOtherVersion		'compare selected version to another selected version'))].
		"Note: Revert to selected should be visible for lists of length one for having the ability to revert to an accidentally deleted method"
		 aMenu addTranslatedList: #(
			('revert to selected version'	fileInSelections					'resubmit the selected version, so that it becomes the current version') 
			('fileOut selected version'	fileOutSelection					'file out the selected version') )].
	^ aMenu