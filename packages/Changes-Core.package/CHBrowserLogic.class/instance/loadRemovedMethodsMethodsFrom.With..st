resetting
loadRemovedMethodsMethodsFrom: aSet With: matchingVersions 
	
		aSet do: [:aPairOfSelectorAndClass |
		| priorChange |
		priorChange := CHNullChangeRecord new.
		aPairOfSelectorAndClass second
			ifNotNil: [priorChange := matchingVersions reversed
						detect: [:changeRecord | changeRecord methodSelector == aPairOfSelectorAndClass first and: [changeRecord methodClass == aPairOfSelectorAndClass second]]
						ifNone: [self error: 'Error in logic: a method that exists to time of snapshot, but has no version.'.].].
		priorChange fileIn.]