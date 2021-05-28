diffs
diffFromPriorSourceFor: sourceCode 

	^ TextDiffBuilder 
		buildDisplayPatchFrom: (self priorSourceOrNil ifNil: [''])
		to: sourceCode 
		inClass: self selectedClass 
		prettyDiffs: self showingPrettyDiffs