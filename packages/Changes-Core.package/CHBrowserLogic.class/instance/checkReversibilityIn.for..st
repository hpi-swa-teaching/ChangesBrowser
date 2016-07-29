resetting
checkReversibilityIn: aWholeChangeList for: aClassName

	| foundDeleteIndex foundRecordsBeforeDefinition firstClassComment firstClassCommentPosition firstMethod firstMethodPosition firstClassification firstClassificationPosition |
	firstClassComment := aWholeChangeList changeList detect: [:currentChangeRecord | currentChangeRecord type == #classComment and: [currentChangeRecord methodClassName == aClassName asSymbol]] ifNone: [nil].
	firstClassComment
		ifNil: [firstClassCommentPosition := -1]
		ifNotNil: [firstClassCommentPosition := aWholeChangeList changeList indexOf: firstClassComment].
	firstMethod := aWholeChangeList changeList detect: [:currentChangeRecord | currentChangeRecord type == #method and: [currentChangeRecord methodClassName = aClassName]] ifNone: [nil].
	firstMethod
		ifNil: [firstMethodPosition := -1]
		ifNotNil: [firstMethodPosition := aWholeChangeList changeList indexOf: firstMethod].
	firstClassification := aWholeChangeList changeList detect: [:currentChangeRecord | currentChangeRecord type == #method and: [currentChangeRecord methodClassName = aClassName]] ifNone: [nil].
	firstClassification
		ifNil: [firstClassificationPosition := -1]
		ifNotNil: [firstClassificationPosition := aWholeChangeList changeList indexOf: firstClassification].
	
	foundDeleteIndex := -1.
	foundRecordsBeforeDefinition := false.
	1 to: aWholeChangeList size
				do: [:currentIndex |
					| currentChangeRecord |
					currentChangeRecord := aWholeChangeList at: currentIndex.
					(((currentChangeRecord type == #doIt) and: [currentChangeRecord methodClassName = aClassName])
							and: [([currentChangeRecord string beginsWith: aClassName] = true)
									or: [currentChangeRecord string = (CHBrowserLogic ClassClassificationBeginFor: aClassName)]])
						ifTrue: [foundRecordsBeforeDefinition := true.].
					 (((aWholeChangeList at: currentIndex) string
								includesSubstring: (CHBrowserLogic ClassDefinitionIdentifierFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex].
					 (((aWholeChangeList at: currentIndex) string
								= (CHBrowserLogic deletedClassIdentifierFor: aClassName)) and: [foundDeleteIndex = -1])
						ifTrue: [foundDeleteIndex := currentIndex]].