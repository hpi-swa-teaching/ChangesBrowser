accessing
groupDescriptions

	^ groupDescriptions collectWithIndex: [:groupDescription :index |
			CRChangeListItem textWithAttributes: groupDescription asText picked: ((self groups at: index) anySatisfy: [:each | each isPicked])]