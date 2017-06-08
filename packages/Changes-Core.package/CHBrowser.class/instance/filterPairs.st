building
filterPairs
| ordCol |
ordCol := OrderedCollection
				with: (OrderedCollection with: 'all' with: #showAllChanges)
				with: #-
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: 'method') ifTrue: '<on>method' ifFalse: 'method') with: #showMethodChangesOnly)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: 'classComment') ifTrue: '<on>class comments' ifFalse: 'class comments') with: #showClassCommentChangesOnly)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: 'doIt') ifTrue: '<on>no do its' ifFalse: 'no do its') with: #hideDoItChanges)
				with: (OrderedCollection with: ((self changesBrowserLogic filterMode includes: 'snapshot') ifTrue: '<on>selected snapshot' ifFalse: 'selected snapshot') with: #showSelectedSnapshotOnly).

^ ordCol

"	^#( 
		#('all'		abd 	#showAllChanges)
		#-
		#('method'				#showMethodChangesOnly)
		#('class comments'		#showClassCommentChangesOnly)
		#('no do its' 			#hideDoItChanges)
		#('selected snapshot' 	#showSelectedSnapshotOnly))"