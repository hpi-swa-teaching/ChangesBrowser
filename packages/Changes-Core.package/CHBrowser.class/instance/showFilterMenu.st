button actions
showFilterMenu
	| builder menuSpec |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self halt.
	self filterPairs
		do: [ :pair | pair == #-
				ifTrue: [menuSpec addSeparator]
				ifFalse: [menuSpec
							add: pair first
							target: self changesBrowserLogic changeList
							selector: pair second
							argumentList: #()]].
	builder runModal: (builder open: menuSpec)