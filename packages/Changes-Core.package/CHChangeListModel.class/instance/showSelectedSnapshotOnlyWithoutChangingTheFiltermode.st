filtering
showSelectedSnapshotOnlyWithoutChangingTheFiltermode
	| nextSnapshotPosition CHlogic|
	self deprecated: 'no longer in use'.
	CHlogic := self dependents at: 1.
	nextSnapshotPosition := (
		self changeList allButFirst detect: [ :changeRecord | 
			changeRecord isSnapshot ] ifNone: [^0]) position.
	self selectChangeRecords: 
		[ :changeRecord | changeRecord position < nextSnapshotPosition ].