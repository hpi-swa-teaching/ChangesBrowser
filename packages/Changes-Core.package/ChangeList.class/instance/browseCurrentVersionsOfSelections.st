menu actions
browseCurrentVersionsOfSelections
	"Opens a message-list browser on the current in-memory versions of all methods that are currently seleted"
	| aList |
	aList := OrderedCollection new.
	Cursor read showWhile: [
		1 to: changeList size do: [:i |
			(listSelections at: i) ifTrue: [
				| aClass aChange |
				aChange := changeList at: i.
				(aChange type = #method
					and: [(aClass := aChange methodClass) notNil
					and: [aClass includesSelector: aChange methodSelector]])
						ifTrue: [
							aList add: (
								MethodReference class: aClass  
									selector: aChange methodSelector
							)
						]]]].

	aList size = 0 ifTrue: [^ self inform: 'no selected methods have in-memory counterparts'].
	ToolSet
		browseMessageSet: aList
		name: 'Current versions of selected methods in ', file localName
		autoSelect: nil