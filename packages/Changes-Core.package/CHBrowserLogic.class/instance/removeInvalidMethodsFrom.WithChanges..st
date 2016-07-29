resetting
removeInvalidMethodsFrom: aSet WithChanges: methodChanges
|newMethods |
	
	"invalid methods indicated by class = nil"
	newMethods := Set new.
	aSet do: [:aPairOfSelectorAndClass |
		| changeRecord priorPosition |
		changeRecord := methodChanges detect: [:methodChange | methodChange methodSelector == aPairOfSelectorAndClass first and: 		[methodChange methodClass == aPairOfSelectorAndClass second]].
		priorPosition := changeRecord prior.
		priorPosition ifNil: [aPairOfSelectorAndClass second ifNotNil: [aPairOfSelectorAndClass second removeSelector: aPairOfSelectorAndClass first. 		newMethods add: aPairOfSelectorAndClass]]].
	aSet removeAll: newMethods.
	
^aSet.