filtering
showClassCommentChangesOnly 
	|CHlogic|
	CHlogic := self dependents at: 1.
	self selectChangeRecords: [ :changeRecord | changeRecord type == #classComment ].
	CHlogic filterMode remove: #classComment ifAbsent: [CHlogic filterMode add: #classComment]. 
	CHlogic saveFilter: CHlogic filterMode.