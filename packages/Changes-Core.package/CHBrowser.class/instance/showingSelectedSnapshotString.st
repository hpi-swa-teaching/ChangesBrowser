filtering
showingSelectedSnapshotString
	^ (self filterSymbol == #selectedSnapshot
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'selected snapshot'.