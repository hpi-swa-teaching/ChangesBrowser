button actions
resetToLastVersion
"Get all changes after the last version and file them in."
"	| changeList listOfChangeRecords |
	self halt.
	changeList := self versionListModel getChangeListForLatestVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | (changeRecord string beginsWith: 'self') not].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn].
		
	self refresh."
	^self browserLogic resetToLastVersion