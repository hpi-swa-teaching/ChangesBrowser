accessing
ui
	"is this method ever called?"
	self halt.
	^ ui ifNil: [ui := ChangesBrowserUi new]