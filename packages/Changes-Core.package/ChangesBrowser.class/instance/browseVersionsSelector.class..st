as yet unclassified
browseVersionsSelector: aSelector class: aClass
	
	| activeChangeRecord |
	
	activeChangeRecord := self changeList changeList at: self changeList listIndex.
	^ VersionsBrowser versionsForSelector: activeChangeRecord methodSelector class: activeChangeRecord methodClass.