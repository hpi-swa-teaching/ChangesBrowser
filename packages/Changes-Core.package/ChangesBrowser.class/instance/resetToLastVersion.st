as yet unclassified
resetToLastVersion

	| changeList listOfChangeRecords |

	changeList := self versionListModel getChangeListForLatestVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | changeRecord type == #method].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn]