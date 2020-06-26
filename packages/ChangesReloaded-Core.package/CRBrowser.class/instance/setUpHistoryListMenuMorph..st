building
setUpHistoryListMenuMorph: aMenuMorph

	aMenuMorph addList: #(
		('Ignore all' ignoreAllOfHistoryList)
		('All latest changes' selectAllLatestChangesOfHistoryList)
		('Ingore all except this one' ignoreAllOfHistoryListExceptSelected)).
	^ aMenuMorph