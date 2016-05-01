menu
fileOutSelection
	| them it file |
	them := OrderedCollection new.
	listSelections with: changeList do: 
		[:selected :item | selected ifTrue: [them add: item]].
	them size ~= 1
		ifTrue: [self inform: 'single version not selected, so nothing done']
		ifFalse:
			[it := them first.
			 file := FileStream newFileNamed: it methodClassName, (it isMetaClassChange ifTrue: [' class'] ifFalse: ['']), '-' , (it methodSelector copyReplaceAll: ':' with: '').
			 [file header; timeStamp.
			  it fileOutOn: file] ensure: [file close]]