browsing
browseVersionsOf: aChangeRecord
	
	"^ self browseVersionsSelector: aChangeRecord methodSelector class: aChangeRecord methodClass."
	^ self browserLogic browseVersionsOf: aChangeRecord