menu-actions
ignoreAllOfHistoryList

	self historyList do: [:each | each ignore].
	self updateAfterMenuAction