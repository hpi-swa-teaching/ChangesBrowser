toolbuilder
buildChangeListWith: builder multiSelect: multiSelect

	| listSpec |
	multiSelect ifTrue:[
		listSpec := builder pluggableMultiSelectionListSpec new.
		listSpec getSelectionList: #listSelectionAt:.
		listSpec setSelectionList: #listSelectionAt:put:.
	] ifFalse:[
		listSpec := builder pluggableListSpec new.
	].

	listSpec 
		model: self;
		list: #list; 
		getIndex: #listIndex; 
		setIndex: #toggleListIndex:; 
		menu: (self showsVersions ifTrue: [#versionsMenu:] ifFalse: [#changeListMenu:]); 
		keyPress: #changeListKey:from:.

	^listSpec