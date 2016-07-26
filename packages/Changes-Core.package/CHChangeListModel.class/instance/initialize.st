initialization
initialize

	super initialize.
	self 
		displayList: OrderedCollection new;
		indexMap: OrderedCollection new;
		filterMode: #all