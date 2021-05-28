button-actions
openHelpPopUp

	| helpText helpTitle |
	helpTitle := 'How To'.
	helpText := 
	'The ChangesBrowser shows you a list of the latest unsaved changes,
	if there are not unsaved changes, the list ist empty. 
	You can load choose which you want to load in your image.'.
	UserDialogBoxMorph inform: helpText translated title: helpTitle translated