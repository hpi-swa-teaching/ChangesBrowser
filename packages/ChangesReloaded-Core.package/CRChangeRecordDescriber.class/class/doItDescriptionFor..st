main
doItDescriptionFor: aChangeListItem
	| RxMatcher |
	self descriptionCollection do: [:aCollectionItemPair | 		
				RxMatcher := aCollectionItemPair first.
				(RxMatcher matches: aChangeListItem string)
					ifTrue: [^ self perform: (aCollectionItemPair second) with: RxMatcher]].
	^ 'not now'