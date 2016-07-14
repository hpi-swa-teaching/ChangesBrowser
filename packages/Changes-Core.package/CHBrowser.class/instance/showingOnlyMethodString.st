filtering
showingOnlyMethodString
	^ (self filterSymbol == #methods
		ifTrue:
			['<yes>']
		ifFalse:
			['<no>']), 'methods'.