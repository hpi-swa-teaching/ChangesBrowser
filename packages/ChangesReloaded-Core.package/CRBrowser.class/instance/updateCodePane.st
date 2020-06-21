updating
updateCodePane

	self contents: (self displayedChangeListItems select: [:each | each isSelected]) first string.
	self contentsChanged