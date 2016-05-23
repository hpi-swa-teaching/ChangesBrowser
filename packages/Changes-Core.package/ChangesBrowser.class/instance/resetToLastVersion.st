as yet unclassified
resetToLastVersion

	| changeList listOfChangeRecords |
"	Smalltalk snapshot: true andQuit: false."
"	self halt."
	changeList := self versionListModel getChangeListForLatestVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | changeRecord type == #method].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn]