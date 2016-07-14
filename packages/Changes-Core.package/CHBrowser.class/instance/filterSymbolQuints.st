building
filterSymbolQuints 
	| collection |
	collection := OrderedCollection new.
	^ collection 
		add: #(#all #showAllChanges #showingAllString 'all' 'show all changes');
		add: #-;
		add: #(#methods #showOnlyMethodChanges #showingOnlyMethodString 'methods' 'show only changes to methods');
		yourself.