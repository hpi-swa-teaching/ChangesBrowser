toolbuilder
buildWith: builder in: window rect: rect
	| csListHeight msgListHeight csMsgListHeight listSpec textSpec |
	contents := ''.
	csListHeight := 0.25.
	msgListHeight := 0.25.
	csMsgListHeight := csListHeight + msgListHeight.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #changeSetList; 
		getSelected: #currentCngSet; 
		setSelected: #showChangeSetNamed:; 
		menu: #changeSetMenu:shifted:; 
		keyPress: #changeSetListKey:from:;
		autoDeselect: false;
		frame: (((0@0 extent: 0.5@csListHeight)
			scaleBy: rect extent) translateBy: rect origin).
	window children add: listSpec.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #classList; 
		getSelected: #currentClassName; 
		setSelected: #currentClassName:; 
		menu: #classListMenu:shifted:; 
		keyPress: #classListKey:from:;
		frame: (((0.5@0 extent: 0.5@csListHeight)
			scaleBy: rect extent) translateBy: rect origin).
	window children add: listSpec.

	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #messageList; 
		getSelected: #currentSelector;
		setSelected: #currentSelector:; 
		menu: #messageMenu:shifted:; 
		keyPress: #messageListKey:from:;
		frame: (((0@csListHeight extent: 1@msgListHeight)
			scaleBy: rect extent) translateBy: rect origin).
	window children add: listSpec.

	textSpec := builder pluggableTextSpec new.
	textSpec 
		model: self;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:;
		frame: (((0@csMsgListHeight corner: 1@1) scaleBy: rect extent) translateBy: rect origin).
	window children add: textSpec.
	^window