toolbuilder
buildWith: builder multiSelect: multiSelect 
	"Open a morphic view for the messageSet, whose label is labelString. 
	The listView may be either single or multiple selection type"
	| windowSpec max |
	max := self wantsOptionalButtons ifTrue:[0.33] ifFalse:[0.4].
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 1@max) -> [self buildChangeListWith: builder multiSelect: multiSelect].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}.
	^builder build: windowSpec