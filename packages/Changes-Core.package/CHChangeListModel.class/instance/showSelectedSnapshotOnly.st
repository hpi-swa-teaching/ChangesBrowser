filtering
showSelectedSnapshotOnly
	| nextSnapshotPosition CHlogic|
	CHlogic := self dependents at: 1.
	nextSnapshotPosition := (
		self changeList allButFirst detect: [ :changeRecord | 
			changeRecord isSnapshot ] ifNone: [^0]) position.
	self selectChangeRecords: 
		[ :changeRecord | changeRecord position < nextSnapshotPosition ].
	CHlogic filterMode remove: #snapshot ifAbsent: [CHlogic filterMode add: #snapshot]. 
	CHlogic applyFilter.