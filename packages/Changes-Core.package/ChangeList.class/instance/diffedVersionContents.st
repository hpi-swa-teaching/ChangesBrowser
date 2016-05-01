viewing access
diffedVersionContents
	"Answer diffed version contents, maybe pretty maybe not"

	| change class earlier later |
	(listIndex = 0
			or: [changeList size < listIndex])
		ifTrue: [^ ''].
	change := changeList at: listIndex.
	later := change text.
	class := change methodClass.
	(listIndex == changeList size or: [class == nil])
		ifTrue: [^ (self showingPrettyDiffs and: [class notNil])
			ifTrue: [class prettyPrinterClass format: later in: class notifying: nil]
			ifFalse: [later]].

	earlier := (changeList at: listIndex + 1) text.

	^ TextDiffBuilder buildDisplayPatchFrom: earlier to: later inClass: class prettyDiffs: self showingPrettyDiffs