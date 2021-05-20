diffs
diffFromPriorSourceFor: sourceCode 
	| prior |
	^ (prior := self priorSourceOrNil)
		ifNil: [
			TextDiffBuilder buildDisplayPatchFrom: '' to: sourceCode inClass: self selectedClass prettyDiffs: self showingPrettyDiffs
			]
		ifNotNil: [TextDiffBuilder buildDisplayPatchFrom: prior to: sourceCode inClass: self selectedClass prettyDiffs: self showingPrettyDiffs]