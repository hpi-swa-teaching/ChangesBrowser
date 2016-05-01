changeSet menu
changeSetMenuForPromote: aMenu

	aMenu add: 'promote to top of list' action: #promoteToTopChangeSet.
	aMenu balloonTextForLastItem:
'Make this change set appear first in change-set lists in all change sorters.'.

	^ aMenu