main
DescriptionOf: aChangeListItem in: aCollectionItemPair

	| RxMatcher |
	RxMatcher := aCollectionItemPair first.
	(RxMatcher matches: aChangeListItem string)
		ifTrue: [^ self perform: (aCollectionItemPair second) with: RxMatcher]
		ifFalse: [^ 'something else']