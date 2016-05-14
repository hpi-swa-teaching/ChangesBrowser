menu actions
browseAllVersionsOfSelections
	"Opens a Versions browser on all the currently selected methods, showing each alongside all of their historical versions."
	|  oldSelection aList |
	oldSelection := self listIndex.
	aList := OrderedCollection new.
	Cursor read showWhile: [
		1 to: self changeList size do: [:i |
			(self listSelections at: i) ifTrue: [
				self listIndex: i.
				self browseVersions.
				aList add: i.
				]]].
	self listIndex: oldSelection.

	aList size = 0 ifTrue: [^ self inform: 'no selected methods have in-memory counterparts'].
