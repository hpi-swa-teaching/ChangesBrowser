button-actions
loadSelectedChanges

	(self selectedChangeListItems
		sorted: [:a :b | a timeStamp < b timeStamp])
		do: [:each | each fileIn]