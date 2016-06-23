resetting
resetDeletedClasses: anSet 
	| wholeChangeList |
	wholeChangeList := self versionListModel getWholeChangeList changeList.
	anSet
		do: [:aClassName | 
			| firstIndex foundDeleteIndex changeRecordsForClass foundRecordsBeforeDefinition |
			firstIndex := -1.
			foundDeleteIndex := -1.
			changeRecordsForClass := OrderedCollection new.
			foundRecordsBeforeDefinition := false.
			1 to: wholeChangeList size
				do: [:currentIndex |
""					| currentChangeRecord |
					currentChangeRecord := wholeChangeList at: currentIndex.
					((currentChangeRecord type == #classComment and: [currentChangeRecord commentClass = aClassName]) and: [foundDeleteIndex = -1])
						ifTrue: [foundRecordsBeforeDefinition := true.].
					(currentChangeRecord type == #method and: [currentChangeRecord methodClassName = aClassName] and: [foundDeleteIndex = -1])
						ifTrue: [foundRecordsBeforeDefinition := true.].
					(((currentChangeRecord type == #doIt) and: [currentChangeRecord methodClassName = aClassName])  and: [foundDeleteIndex = -1]
							and: [([currentChangeRecord string beginsWith: aClassName] = true)
									or: [currentChangeRecord string
											matchesRegex: (ChangesBrowser ClassClassificationRegexFor: aClassName)]])
						ifTrue: [foundRecordsBeforeDefinition := true.].
					 (((wholeChangeList at: currentIndex) string
								matchesRegex: (ChangesBrowser ClassDefinitionRegexFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex].""
					 (((wholeChangeList at: currentIndex) string
								matchesRegex: (ChangesBrowser deletedClassRegexFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex]].
			foundRecordsBeforeDefinition ifTrue: [self error: 'Cannot resore class ' , aClassName].
			foundDeleteIndex to: wholeChangeList size
				do: [:currentIndex | (((wholeChangeList at: currentIndex) string
							matchesRegex: (ChangesBrowser ClassDefinitionRegexFor: aClassName)) and: [firstIndex = -1])
						ifTrue: [firstIndex := currentIndex]].
			firstIndex = -1 	ifTrue: [self error: 'Cannot resore class ' , aClassName].
			firstIndex to: wholeChangeList size
				do: [:currentIndex | 
					| currentChangeRecord |
					currentChangeRecord := wholeChangeList at: currentIndex.
					"TODO: Clear RecordList, if it's a delete-Record, but not if it's the last record"
"					(currentChangeRecord string
								matchesRegex: (ChangesBrowser deletedClassRegexFor: aClassName))
								ifTrue: [changeRecordsForClass := OrderedCollection new.]."
					(currentChangeRecord type == #classComment and: [currentChangeRecord commentClass = aClassName])
						ifTrue: [changeRecordsForClass addLast: currentChangeRecord].
					(currentChangeRecord type == #method and: [currentChangeRecord methodClassName = aClassName])
						ifTrue: [changeRecordsForClass addLast: currentChangeRecord].
					(currentChangeRecord type == #doIt
							and: [(([currentChangeRecord string beginsWith: aClassName] = true)
										or: [currentChangeRecord string
												matchesRegex: (ChangesBrowser ClassDefinitionRegexFor: aClassName)])
									or: [currentChangeRecord string
											matchesRegex: (ChangesBrowser ClassClassificationRegexFor: aClassName)]])
						ifTrue: [changeRecordsForClass addLast: currentChangeRecord]].
			changeRecordsForClass
				do: [:aChangeRecord | aChangeRecord fileIn]].
			self refresh.