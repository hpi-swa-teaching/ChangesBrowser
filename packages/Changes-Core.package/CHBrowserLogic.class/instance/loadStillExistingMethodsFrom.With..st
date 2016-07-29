resetting
loadStillExistingMethodsFrom: aSet With: matchingVersions 

	aSet do: [:aPairOfSelectorAndClass |
		| priorChange |
		priorChange := CHNullChangeRecord new.
		aPairOfSelectorAndClass second = nil
			ifFalse: [priorChange := matchingVersions reversed
						detect: [:changeRecord | changeRecord methodSelector == aPairOfSelectorAndClass first and: [changeRecord methodClass == aPairOfSelectorAndClass second]] ifNone: [self error: 'Error in logic: a method that exists before snapshot, but has no version before that snapshot'.].].
		priorChange fileIn.].