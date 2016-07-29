filtering
showClassCommentChangesOnly 
	self selectChangeRecords: [ :changeRecord | changeRecord type == #classComment ].