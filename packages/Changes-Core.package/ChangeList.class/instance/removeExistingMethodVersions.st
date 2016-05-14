menu actions
removeExistingMethodVersions
	"Remove all up to date version of entries from the receiver"
	| newChangeList newList |
	newChangeList := OrderedCollection new.
	newList := OrderedCollection new.

	self changeList with: list do:[:chRec :strNstamp | 
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
	newChangeList size < self changeList size
		ifTrue:
			[self changeList: newChangeList.
			self list: newList.
			self listIndex: 0.
			self listSelections: (Array new: self list size withAll: false)].
	self changed: #list