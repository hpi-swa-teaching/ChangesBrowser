filtering
showMethodChangesOnly 
	self selectChangeRecords: [ :changeRecord | changeRecord type == #method ].