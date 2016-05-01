message list
basicMessageList 

	| probe newSelectors className |
	currentClassName ifNil: [^ #()].
	className := (self withoutItemAnnotation: currentClassName) .
	probe := (className endsWith: ' class')
		ifTrue: [className]
		ifFalse: [className asSymbol].
	newSelectors := myChangeSet selectorsInClass: probe.
	(newSelectors includes: (self selectedMessageName)) 
		ifFalse: [currentSelector := nil].
	^ newSelectors asSortedCollection
