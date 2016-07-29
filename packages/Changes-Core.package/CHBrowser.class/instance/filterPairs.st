building
filterPairs
	^#(
		#('all'					#showAllChanges)
		#-
		#('method' 				#showMethodChangesOnly)
		#('class comments'		#showClassCommentChangesOnly)
		#('no do its' 			#hideDoItChanges)
		#('selected snapshot' 	#showSelectedSnapshotOnly))