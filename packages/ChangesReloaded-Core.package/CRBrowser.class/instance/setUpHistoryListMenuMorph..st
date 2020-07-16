toolbuilder
setUpHistoryListMenuMorph: aMenuMorph

	aMenuMorph addList: #(
		('Ignore all' ignoreAllOfHistoryListAndUpdateUI)
		('All latest changes' selectAllLatestChangesOfHistoryListAndUpdateUI)
		('Ingore all except this one' ignoreAllOfHistoryListExceptSelectedAndUpdateUI)).
	^ aMenuMorph