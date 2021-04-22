button-actions
switchToSimpleView
	"Open the CRBrowser, which offers a simpler view for the changes."
	
	self changed: #close.
	^ CRBrowser open