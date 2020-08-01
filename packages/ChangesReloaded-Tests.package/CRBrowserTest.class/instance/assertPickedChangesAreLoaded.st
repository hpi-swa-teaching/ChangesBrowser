assertions
assertPickedChangesAreLoaded
	
	self assert: (self changesBrowser changeListItems allSatisfy: [:each | each isInImage not]).
	self changesBrowser changeListItems do: [:each | each pick].
	self changesBrowser changeListItems second unpick.
	self changesBrowser changeListItems fourth unpick.
	self changesBrowser loadPickedChanges.
	self assert: (self changesBrowser changeListItems collect: [:each | each isInImage] = 
						#(true false true false true true) asOrderedCollection).