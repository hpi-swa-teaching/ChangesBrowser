button-actions
loadIncludedChanges

	(self includedChangeListItems
		sorted: [:a :b | a timeStamp < b timeStamp])
		do: [:each | each fileIn]