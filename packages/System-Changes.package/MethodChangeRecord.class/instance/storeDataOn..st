objects from disk
storeDataOn: aDataStream
	| oldMethod |
	oldMethod := currentMethod.
	currentMethod := nil.
	super storeDataOn: aDataStream.
	currentMethod := oldMethod.
