building
filterPairs
| ordCol |
ordCol := OrderedCollection
				with: (OrderedCollection with: 'all' with: #showAllChangesAndResetFilter)
				with: #-
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: #method) ifTrue: '<on>method' ifFalse: '<off>method') with: #toggleShowMethodChanges)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: #classComment) ifTrue: '<on>class comments' ifFalse: '<off>class comments') with: #toggleShowClassCommentChanges)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: #doIt) ifTrue: '<on>do its' ifFalse: '<off>do its') with: #toggleShowDoItChanges)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: 'snapshot') ifTrue: '<on>selected snapshot' ifFalse: '<off>selected snapshot') with: #showSelectedSnapshotOnly).

^ ordCol

"	^#( 
		#('all'		abd 	#showAllChanges)
		#-
		#('method'				#showMethodChangesOnly)
		#('class comments'		#showClassCommentChangesOnly)
		#('no do its' 			#hideDoItChanges)
		#('selected snapshot' 	#showSelectedSnapshotOnly))"