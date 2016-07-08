browsing
getChangeListForTime: aTimeStamp
	1 to: self list size
		do: [:currentIndex | 
			| extractedTimeStamp |
			extractedTimeStamp := CHBrowserLogic
						extractTimeStamp: (self list at: currentIndex).
			(extractedTimeStamp < aTimeStamp
					or: [extractedTimeStamp = aTimeStamp])
				ifTrue: [^ self getChangeListForImageStateAt: currentIndex]].
	self inform: 'The selected time stamp is too old!'