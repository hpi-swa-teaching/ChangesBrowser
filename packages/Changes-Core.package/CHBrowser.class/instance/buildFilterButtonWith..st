building
buildFilterButtonWith: builder 

	| buttonSpec |
	buttonSpec := builder pluggableActionButtonSpec new.
	buttonSpec
		model: self;
		label: #filterButtonLabel;
		changeLabelWhen: #filterLabel;
		style: #menuButton;
		action: #showFilterMenu;
		help: 'Governs what entries are shown in the change list.  Click here to change the view';
		margin: (5 @ 0 corner: 0 @ 0).
	^ buttonSpec