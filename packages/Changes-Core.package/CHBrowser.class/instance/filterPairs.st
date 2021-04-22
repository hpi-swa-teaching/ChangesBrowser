building
filterPairs

| ordCol |
ordCol := OrderedCollection
				with: (OrderedCollection with: 'all' with: #showAllChangesAndResetFilter)
				with: #-
				with: (OrderedCollection with: ((self filterMode includes: #method) ifTrue: '<on>method' ifFalse: '<off>method') with: #toggleShowMethodChanges)
				with: (OrderedCollection with: ((self filterMode includes: #classComment) ifTrue: '<on>class comments' ifFalse: '<off>class comments') with: #toggleShowClassCommentChanges)
				with: (OrderedCollection with: ((self filterMode includes: #doIt) ifTrue: '<on>do its' ifFalse: '<off>do its') with: #toggleShowDoItChanges).

^ ordCol