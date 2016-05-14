viewing access
diffedVersionContents
	"Answer diffed version contents, maybe pretty maybe not"

	| change class earlier later |
	(self listIndex = 0
			or: [self changeList size < self listIndex])
		ifTrue: [^ ''].
	change := self changeList at: self listIndex.
	later := change text.
	class := change methodClass.
	(self listIndex == self changeList size or: [class == nil])
		ifTrue: [^ (self showingPrettyDiffs and: [class notNil])
			ifTrue: [class prettyPrinterClass format: later in: class notifying: nil]
			ifFalse: [later]].

	earlier := (self changeList at: self listIndex + 1) text.

	^ TextDiffBuilder buildDisplayPatchFrom: earlier to: later inClass: class prettyDiffs: self showingPrettyDiffs