button-actions
loadingProcess

	^ [:bar | self pickedChangeListItems reverse
			doWithIndex: [:each :index |
				bar value: ('loading {1}/{2}: {3}' format: {index . self numberOfPickedChangeListItems . each description}).
				each fileIn.]]