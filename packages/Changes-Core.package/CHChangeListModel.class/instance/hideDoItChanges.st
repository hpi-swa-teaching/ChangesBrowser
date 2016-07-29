filtering
hideDoItChanges 
	self selectChangeRecords: [ :changeRecord | changeRecord type ~~ #doIt ].