filtering
hideDoItChanges 
	|CHlogic|
	CHlogic := self dependents at: 1.
	self selectChangeRecords: [ :changeRecord | changeRecord type ~~ #doIt ].
	CHlogic filterMode remove: #doIt ifAbsent: [CHlogic filterMode add: #doIt]. 
	CHlogic saveFilter: CHlogic filterMode.