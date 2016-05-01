menu actions
selectConflictsWith
	"Selects all method definitions for which there is ALSO an entry in the specified changeSet or changList chosen by the user. 4/11/96 tk"
	| aStream all index |
	aStream := WriteStream on: (String new: 200).
	(all := ChangesOrganizer allChangeSets copy) do:
		[:sel | aStream nextPutAll: (sel name contractTo: 40); cr].
	ChangeList allSubInstancesDo:
		[:sel | aStream nextPutAll: (sel file name); cr.
			all addLast: sel].
	aStream skip: -1.
	index := (UIManager default chooseFrom: (aStream contents substrings)).
	index > 0 ifTrue: [
		self selectConflicts: (all at: index)].
