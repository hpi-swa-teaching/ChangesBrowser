initialization-release
initialize
	"Initialize a blank ChangeList.  Set the contentsSymbol to reflect whether diffs will initally be shown or not"

	contentsSymbol := Preferences diffsInChangeList
		ifTrue:
			[self defaultDiffsSymbol]
		ifFalse:
			[#source].
	self changeList: OrderedCollection new.
	self list: OrderedCollection new.
	self listIndex: 0.
	super initialize