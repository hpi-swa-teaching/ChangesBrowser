menu-actions
ignoreAllOfHistoryListExceptSelected

	(self historyList
		reject: [:each | each = self selectedHistoryListItem])
		do: [:each | each ignore]
