button actions
resetToLastVersion
"Get all changes after the last version and file them in."
	| changeList listOfChangeRecords |

	changeList := self versionListModel getChangeListForLatestVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | changeRecord type == #method].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self testMode ifFalse: [self refresh.].