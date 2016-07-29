accessing
list: anOrderedCollectionOfBanners

	list ifNotNil: [
		self currentlyShownIndex ifNotNil: [
			self currentlyShownIndex: ((self currentlyShownIndex + anOrderedCollectionOfBanners size - self list size) max: 0).
		self selectedIndex ifNotNil: [
			self selectedIndex: ((self selectedIndex + anOrderedCollectionOfBanners size - self list size) max: 0)]]].
	list := anOrderedCollectionOfBanners.
	self changed.