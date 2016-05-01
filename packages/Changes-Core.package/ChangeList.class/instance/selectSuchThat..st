menu actions
selectSuchThat: aBlock
	"select all changes for which block returns true"
	listSelections := aBlock numArgs = 2
						ifTrue: [changeList withIndexCollect: aBlock]
						ifFalse: [changeList collect: aBlock].
	self changed: #allSelections