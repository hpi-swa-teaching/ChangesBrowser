other
modelWakeUp
	"A window with me as model is being entered.  Make sure I am up-to-date with the changeSets."

	"Dumb way"
	leftCngSorter canDiscardEdits 
		ifTrue: [leftCngSorter update]	"does both"
		ifFalse: [rightCngSorter update].
