browsing
browseVersionsOfSelectedMethod
	
	| activeChangeRecord |
	
	activeChangeRecord := self changeList changeList at: self changeList listIndex.
	^ self browseVersionsOf: activeChangeRecord.