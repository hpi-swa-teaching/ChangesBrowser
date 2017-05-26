filtering
showMethodChangesOnly 
	|CHlogic|
	CHlogic := self dependents at: 1.
	self selectChangeRecords: [ :changeRecord | changeRecord type == #method ].
	CHlogic filterMode remove: #method ifAbsent: [CHlogic filterMode add: #method]. 

