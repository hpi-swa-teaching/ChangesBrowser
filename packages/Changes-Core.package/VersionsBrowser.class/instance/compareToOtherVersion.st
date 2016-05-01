menu
compareToOtherVersion
	"Prompt the user for a reference version, then spawn a window 
	showing the diffs between the older and the newer of the current 
	version and the reference version as text."

	| change1 change2 s1 s2 |
	change1 := changeList at: listIndex ifAbsent: [ ^self ].

	change2 := ((UIManager default
				chooseFrom: (list copyWithoutIndex: listIndex)
				values: (changeList copyWithoutIndex: listIndex))) ifNil: [ ^self ].
	
	"compare earlier -> later"
	"change1 timeStamp < change2 timeStamp
		ifFalse: [ | temp | temp := change1. change1 := change2. change2 := temp ]."

	s1 := change1 string.
	s2 := change2 string.
	s1 = s2
		ifTrue: [^ self inform: 'Exact Match' translated].

	(StringHolder new
		textContents: (TextDiffBuilder
				buildDisplayPatchFrom: s1
				to: s2
				inClass: classOfMethod
				prettyDiffs: self showingPrettyDiffs))
		openLabel: (('Comparison from {1} to {2}' translated) format: { change1 stamp. change2 stamp })