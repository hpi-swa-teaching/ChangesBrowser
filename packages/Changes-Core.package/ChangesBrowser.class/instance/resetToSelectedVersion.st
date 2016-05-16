as yet unclassified
resetToSelectedVersion

	| changeList listOfChangeRecords |
	changeList := self versionListModel getChangeListForSelectedVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | changeRecord type == #method].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn]