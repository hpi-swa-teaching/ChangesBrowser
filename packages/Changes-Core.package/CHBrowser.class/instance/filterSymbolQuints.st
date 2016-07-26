building
filterSymbolQuints 

	| collection |
	collection := OrderedCollection new.
	^ collection 
		add: #(#all #showAllChanges #showingAllString 'all' 'show all changes');
		add: #-;
		add: #(#methods #showOnlyMethodChanges #showingOnlyMethodString 'methods' 'show only changes to methods');
		add: #(#noDoits #showNoDoItsChanges #showingNoDoItsString 'no do its' 'remove all do its');
		add: #(#selectedSnapshot #showSelectedSnapshotChanges #showingSelectedSnapshotString 'selected snapshot' 'show only changes between selected and next snapshot');
		yourself