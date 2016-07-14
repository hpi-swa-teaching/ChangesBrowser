initialization
initialize
	super initialize.
	displayListIndex := 0.
	self 
		displayList: OrderedCollection new;
		indexMap: Dictionary new;
		filterMode: #all.