content
diffText
	
	| sourceText |
	sourceText := self hasPriorSource
		ifTrue: [self priorSource]
		ifFalse: [''].
		
	^ TextDiffBuilder buildDisplayPatchFrom: sourceText to: self string inClass: (self attributes at: #class) prettyDiffs: true