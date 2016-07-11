resetting
resetMethods: aChangeList with: wholeChangeList
		
	| numberOfChanges wholeChanges methodChanges stillExisting newMethods removedMethods matchingVersions |

	numberOfChanges := aChangeList changeList size.
	stillExisting := Set new.
	removedMethods := Set new.
	
	"Cut the original whole changeList after the snapshot"
	wholeChanges := wholeChangeList changeList.
	wholeChanges removeLast: numberOfChanges.
	
	methodChanges := aChangeList changeList select: [:aChangeRecord | aChangeRecord type == #method or: [aChangeRecord string matchesRegex: self class removeSelectorRegex]].
	methodChanges reversed do: [:aChangeRecord |
		aChangeRecord type == #method
		ifTrue: [
				stillExisting add: {aChangeRecord methodSelector . aChangeRecord methodClass}.
				removedMethods remove: {aChangeRecord methodSelector . aChangeRecord methodClassName} ifAbsent: []]
		ifFalse: [
				| selector class positionOfFirstSpace positionOfSecondSpace |
				positionOfFirstSpace := aChangeRecord string findString: ' '.
				positionOfSecondSpace := aChangeRecord string findString: ' ' startingAt: positionOfFirstSpace + 1.
				class := Smalltalk classNamed: (aChangeRecord string copyFrom: 1 to: positionOfFirstSpace - 1).
				selector := (aChangeRecord string copyFrom: positionOfSecondSpace + 2 to: aChangeRecord string size) asSymbol.
				removedMethods add: {selector . class}. 
				stillExisting remove: {selector . class} ifAbsent: []]].
		
	"Filter out mehtods created after the snapshot or are in a class, which was created after the snapshot (indicated by class = nil)"
	newMethods := Set new.
	stillExisting do: [:aPairOfSelectorAndClass |
		| changeRecord priorPosition |
		changeRecord := methodChanges detect: [:methodChange | methodChange methodSelector == aPairOfSelectorAndClass first and: [methodChange methodClass == aPairOfSelectorAndClass second]].
		priorPosition := changeRecord prior.
		priorPosition ifNil: [aPairOfSelectorAndClass second ifNotNil: [aPairOfSelectorAndClass second removeSelector: aPairOfSelectorAndClass first. newMethods add: aPairOfSelectorAndClass]]].
	stillExisting removeAll: newMethods.
	
	matchingVersions := wholeChanges select: [:changeRecord | changeRecord type == #method and: [(stillExisting includes: {changeRecord methodSelector . changeRecord methodClass}) or: [removedMethods includes: {changeRecord methodSelector . changeRecord methodClass}]]].
	stillExisting do: [:aPairOfSelectorAndClass |
		| priorChange |
		priorChange := matchingVersions reversed detect: [:changeRecord | changeRecord methodSelector == aPairOfSelectorAndClass first and: [changeRecord methodClass == aPairOfSelectorAndClass second]].
		priorChange fileIn.].
	removedMethods do: [:aPairOfSelectorAndClass |
		| priorChange |
		priorChange := matchingVersions reversed detect: [:changeRecord | changeRecord methodSelector == aPairOfSelectorAndClass first and: [changeRecord methodClass == aPairOfSelectorAndClass second]].
		priorChange fileIn.]