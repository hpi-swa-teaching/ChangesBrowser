filtering
showSelectedSnapshotOnly
	| nextSnapshotPosition |
	nextSnapshotPosition := (
		self changeList allButFirst detect: [ :changeRecord | 
			changeRecord isSnapshot ] ifNone: [^0]) position.
	self selectChangeRecords: 
		[ :changeRecord | changeRecord position < nextSnapshotPosition ].