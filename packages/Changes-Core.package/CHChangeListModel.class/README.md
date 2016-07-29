A ChangeListForChangesBrowser is a ChangeList with modified class methods, to return the changeList instead of opening a VersionsBrowser.
It also provides filters for output (like just methods).

Instance Variables
	displayList: 		<OrderedCollection>
	filterMode: 		<Symobol>
	indexMap: 		<OrderedCollection>
			
displayList
	- A collection which holds all textual representations of ChangeRecords, that are visible after applying the filter.

filterMode
	- A symbol which indicates the current filter.

indexMap
	- A collection which holds all indexes of ChangeRecords, that are visible after applying the filter.