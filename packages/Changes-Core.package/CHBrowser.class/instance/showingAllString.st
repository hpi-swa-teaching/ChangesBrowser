filtering
showingAllString

	^ (self filterSymbol == #all
		ifTrue: ['<yes>']
		ifFalse: ['<no>']), 'all'