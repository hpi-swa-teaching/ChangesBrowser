A CHImageStateListModel is used to interact with the changeFile.

Instance Variables
	changesBrowserLogic:		<CHBrowserLogic>
	currentlyShownIndex:		<Integer>
	endPosition:				<Integer>
	list:							<OrderedCollection>
	positions:					<OrderedCollection>
	selectedIndex:				<Integer>

changesBrowserLogic
	- The logic of the CHBrowser. Has to know it, to update it, when changeFile changes, ...

currentlyShownIndex
	- The index of the imageState (a Snapshot), for that the changes in the browser are presented.

endPosition
	- the last position in the changeFile. When new entries has to be written, they will start at this position.

list
	- the textual representations of the imageStates (Snapshots) in an OrderedCollection.

positions
	- the positions of changeRecords (as an OrderedCollection) within the changeFile.

selectedIndex
	- the currently selected index of imageStates. One has to know it, to read the right changes (like get changes for selected imageState)