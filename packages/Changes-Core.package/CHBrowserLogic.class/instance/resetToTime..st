resetting
resetToTime: aTimeStamp 

	| indexOfAccordingSnapshot wholeChangeList partChangeList |
	
	wholeChangeList := self imageStateListModel getWholeChangeList.
	indexOfAccordingSnapshot := self imageStateListModel getChangeListIndexTime: aTimeStamp.
	partChangeList := self imageStateListModel getChangeListForImageStateAt: indexOfAccordingSnapshot.
	
	self
		resetImageState: wholeChangeList with: partChangeList;
		resetChangesAfterStateUpTo: aTimeStamp with: partChangeList;
		refresh.