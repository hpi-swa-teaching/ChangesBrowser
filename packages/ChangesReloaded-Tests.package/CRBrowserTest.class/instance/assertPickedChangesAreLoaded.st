assertions
assertPickedChangesAreLoaded
	
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isInImage not]).
	self changesBrowser changeListItems do: [:each | each isPicked: true].
	self changesBrowser changeListItems second isPicked: false.
	self changesBrowser changeListItems fourth isPicked: false.
	self changesBrowser loadPickedChanges.
	self assert: (self changesBrowser changeListItems collect: [:each | each isInImage] = 
						#(true false true false true true) asOrderedCollection).