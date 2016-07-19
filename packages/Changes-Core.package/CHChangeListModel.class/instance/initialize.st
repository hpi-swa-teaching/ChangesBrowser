initialization
initialize
	super initialize.
	self 
		displayList: OrderedCollection new;
		indexMap: Dictionary new;
		filterMode: #all.