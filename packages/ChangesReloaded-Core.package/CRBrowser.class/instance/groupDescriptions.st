accessing
groupDescriptions

	^ groupDescriptions collectWithIndex: [:groupDescription :index |
		((self groups at: index) anySatisfy: [:each | each isPicked])
			ifTrue: [groupDescription asText]
			ifFalse: [groupDescription asText addAllAttributes: CRChangeListItem unpickedAttributes]]