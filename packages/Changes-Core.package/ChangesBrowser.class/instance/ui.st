accessing
ui

	^ ui ifNil: [ui := ChangesBrowserUi new]