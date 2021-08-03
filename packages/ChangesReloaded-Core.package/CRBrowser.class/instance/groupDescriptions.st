accessing
groupDescriptions

	^ groupDescriptions collectWithIndex: [:groupDescription :index |
		((self groups at: index) anySatisfy: [:each | each isPicked])
			ifTrue: [groupDescription asText]
			ifFalse: [groupDescription copy asText addAllAttributes: CRChangeListItem unpickedAttributes]]