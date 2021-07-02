button-actions
fileInPickedChanges

	'ProgressBar'
		displayProgressFrom: 0
		to: self numberOfPickedChangeListItems
		during: [:bar | self pickedChangeListItems reverse
				doWithIndex: [:each :index | 
					bar value: index.
					bar value: 'loading ', index printString , '/' , self numberOfPickedChangeListItems printString , ': ' , each description printString.
					each fileIn]]
