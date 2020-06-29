menu-actions
selectAllLatestChangesOfHistoryList

	self historyList do: [:each | each selectLatest].
	self updateAfterMenuAction