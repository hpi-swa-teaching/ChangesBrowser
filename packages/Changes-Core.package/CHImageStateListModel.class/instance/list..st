accessing
list: anObject
	list ifNotNil: [
		self currentlyShownIndex ifNotNil: [
			self currentlyShownIndex: ((self currentlyShownIndex + anObject size - self list size) max: 0).
		self selectedIndex ifNotNil: [
			self selectedIndex: ((self selectedIndex + anObject size - self list size) max: 0)]]].
	list := anObject.
	self changed.