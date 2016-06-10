accessing
list: anObject
	list ifNotNil: [
		self currentlyShownIndex ifNotNil: [self currentlyShownIndex: (self currentlyShownIndex + anObject size - self list size)].
		self selectedIndex ifNotNil: [self selectedIndex: (self selectedIndex + anObject size - self list size)]].
	list := anObject.
	self changed.