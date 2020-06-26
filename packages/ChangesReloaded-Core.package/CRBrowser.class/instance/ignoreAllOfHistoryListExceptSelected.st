menu-actions
ignoreAllOfHistoryListExceptSelected

	| selectedHistoryListItem |
	selectedHistoryListItem := self selectedHistoryListItem.

	(self historyList
		reject: [:each | each = selectedHistoryListItem])
		do: [:each | each ignore]