button-actions
openHelpPopUp

	| helpText helpTitle |
	helpTitle := 'How To'.
	helpText := 
'The ChangesBrowser shows you a list of the latest unsaved changes,
if there are no unsaved changes, the list is empty. 
You can choose which you want to load in your image.'.
	UserDialogBoxMorph inform: helpText translated title: helpTitle translated
