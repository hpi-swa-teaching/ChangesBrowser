message list
shiftedMessageMenu: aMenu
	"Arm the menu so that it holds items appropriate to the message-list while the shift key is down.  Answer the menu."
	<messageListMenuShifted: true>
	^ aMenu addList: #(
		-
		('toggle diffing (D)'					toggleDiffing)
		('implementors of sent messages'		browseAllMessages)
		('change category...'				changeCategory)
			-
		('sample instance'					makeSampleInstance)
		('inspect instances'					inspectInstances)
		('inspect subinstances'				inspectSubInstances)
		-
		('change sets with this method'		findMethodInChangeSets)
		('revert to previous version'			revertToPreviousVersion)
		('revert & remove from changes'	revertAndForget));
	yourself
