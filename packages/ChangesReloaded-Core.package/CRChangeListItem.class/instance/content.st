content
content

	| prior |
	^ (prior := self priorSourceOrNil)
		ifNil: [self string asText]
		ifNotNil: [TextDiffBuilder buildDisplayPatchFrom: prior to: self string inClass: (self attributes at: #class) prettyDiffs: true]