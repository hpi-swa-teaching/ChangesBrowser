menu actions
removeExistingMethodVersions
	"Remove all up to date version of entries from the receiver"
	| newChangeList newList |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	changeList with: list do:[:chRec :strNstamp | 
			| str keep cls sel |
			keep := true.
			(cls := chRec methodClass) ifNotNil:[
				str := chRec string.
				sel := cls newParser parseSelector: str.
				keep := (cls sourceCodeAt: sel ifAbsent:['']) asString ~= str.
			].
			keep ifTrue:[
					newChangeList add: chRec.
					newList add: strNstamp]].
	newChangeList size < changeList size
		ifTrue:
			[changeList := newChangeList.
			list := newList.
			listIndex := 0.
			listSelections := Array new: list size withAll: false].
	self changed: #list