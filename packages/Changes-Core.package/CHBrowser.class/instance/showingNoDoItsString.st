filtering
showingNoDoItsString
	^ (self filterSymbol == #noDoIts
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'no do its'.