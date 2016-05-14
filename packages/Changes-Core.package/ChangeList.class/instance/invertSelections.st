menu actions
invertSelections
	"Invert the selectedness of each item in the changelist"

	self listSelections: (self listSelections collect: [ :ea | ea not]).
	self listIndex: 0.
	self changed: #allSelections.
	self contentsChanged