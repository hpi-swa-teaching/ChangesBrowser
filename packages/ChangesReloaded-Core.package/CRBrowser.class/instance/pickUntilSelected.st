actions
pickUntilSelected

	self changesUntilSelectedChange do: [:each | each pick].
	self changesAfterSelectedChange do: [:each | each unpick]
	