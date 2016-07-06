accessing
getChangeListForTime: aTimeStamp fromFile: aFile
	1 to: self list size
		do: [:currentIndex | 
			| extractedTimeStamp |
			extractedTimeStamp := CHBrowser
						extractTimeStamp: (self list at: currentIndex).
			(extractedTimeStamp < aTimeStamp
					or: [extractedTimeStamp = aTimeStamp])
				ifTrue: [^ CHChangeListModel
						browseRecent: (self endPosition - self positions at: currentIndex) on: aFile]].
	self inform: 'The selected time stamp is too old!'