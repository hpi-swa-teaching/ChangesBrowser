testing
testCorrectHistoryListItemsSelectedWhenPicked

	| browserWindow world |
	browserWindow := CRBrowser openWith: self class mockChanges.
	world := browserWindow world.
	"self changesBrowser: browserWindow model."
	
	self click: MouseEvent redButton at: browserWindow submorphs second bounds origin + (1@1) in: world.
	self halt.
	self assert: (browserWindow model historyListSelectionIndex = 1).
	self halt.
	browserWindow closeBoxHit.
	self halt