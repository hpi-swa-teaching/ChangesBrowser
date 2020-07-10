button-actions
loadSelectedChanges

	(self includedChangeListItems
		sorted: [:a :b | a timeStamp < b timeStamp])
		do: [:each | each fileIn]