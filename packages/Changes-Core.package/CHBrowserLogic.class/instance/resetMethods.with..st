resetting
resetMethods: aChangeList with: wholeChangeList
		
	| numberOfChanges wholeChanges methodChanges stillExisting removedMethods matchingVersions aCollection|

	numberOfChanges := aChangeList changeList size.
	
	"Cut the original whole changeList after the snapshot"
	wholeChanges := wholeChangeList changeList.
	wholeChanges removeLast: numberOfChanges.
	
	methodChanges := aChangeList changeList select: [:aChangeRecord | aChangeRecord type == #method or: [aChangeRecord string 		matchesRegex: self class removeSelectorRegex]].
			
	aCollection := self sortIntoStillExistingAndRemovedMethods: methodChanges.
	stillExisting := aCollection first.
	removedMethods := aCollection second.
	stillExisting := self removeInvalidMethodsFrom: stillExisting WithChanges: methodChanges.
	
	matchingVersions := wholeChanges select: [:changeRecord | changeRecord type == #method and: [(stillExisting includes: {changeRecord 	methodSelector . changeRecord methodClass}) or: [removedMethods includes: {changeRecord methodSelector . changeRecord 	methodClass}]]].
	
	self
		loadStillExistingMethodsFrom: stillExisting With: matchingVersions;
		loadRemovedMethodsMethodsFrom: removedMethods With: matchingVersions.