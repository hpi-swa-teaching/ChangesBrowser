actions
pickUntil: index

	(self changesUntil: index) do: [:each | each pick].
	(self changesAfter: index) do: [:each | each unpick].