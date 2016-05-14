menu actions
fileInSelections 
	| any |
	any := false.
	self listSelections with: self changeList do: 
		[:selected :item | selected ifTrue: [any := true. item fileIn]].
	any ifFalse:
		[self inform: 'nothing selected, so nothing done']