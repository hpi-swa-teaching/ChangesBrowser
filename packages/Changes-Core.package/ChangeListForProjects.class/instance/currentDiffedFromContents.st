contents
currentDiffedFromContents
	"Answer the current in-memory method diffed from the current contents"

	| aChange aClass |
	listIndex = 0
		ifTrue: [^ ''].
	aChange := changeList at: listIndex.
	^ ((aChange type == #method
				and: [(aClass := aChange methodClass) notNil])
			and: [aClass includesSelector: aChange methodSelector])
		ifTrue: [TextDiffBuilder
				buildDisplayPatchFrom: aChange text
				to: (aClass sourceCodeAt: aChange methodSelector)
				inClass: aClass
				prettyDiffs: self showingPrettyDiffs]
		ifFalse: [(changeList at: listIndex) text]