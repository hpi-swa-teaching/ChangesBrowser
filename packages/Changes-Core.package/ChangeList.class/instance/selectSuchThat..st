menu actions
selectSuchThat: aBlock
	"select all changes for which block returns true"
	self listSelections: (aBlock numArgs = 2
						ifTrue: [self changeList withIndexCollect: aBlock]
						ifFalse: [self changeList collect: aBlock]).
	self changed: #allSelections