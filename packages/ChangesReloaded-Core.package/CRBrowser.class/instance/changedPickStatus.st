updating
changedPickStatus
	"must be called whenever the number or configuration of picked changeListItems has changed"
	self
		changed: #loadButtonLabel;
		changed: #isLoadButtonEnabled;
		changedGroupDescriptions;
		changedVersionDescriptions.