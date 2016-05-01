class list
shiftedClassListMenu: aMenu
	"Fill aMenu with items appropriate for the class list"
	<classListMenuShifted: true>

	aMenu title: 'class list'.
	aMenu addStayUpItemSpecial.

	aMenu addList: #(
			-
			('unsent methods'						browseUnusedMethods)
			('unreferenced inst vars'				showUnreferencedInstVars)
			('unreferenced class vars'				showUnreferencedClassVars)
			-
			('sample instance'						makeSampleInstance)
			('inspect instances'						inspectInstances)
			('inspect subinstances'					inspectSubInstances)
			-
			('more...'								offerUnshiftedClassListMenu )).

	^ aMenu