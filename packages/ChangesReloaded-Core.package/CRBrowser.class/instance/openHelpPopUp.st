button-actions
openHelpPopUp

	| helpText helpTitle |
	helpTitle := 'How to use the Changes Browser Reloaded'.
	helpText := 
'The Changes Browser shows you a list of the unsaved changes from your last session. 
They are grouped into categories on the left side. 
If you click on a change category, the version history of that code is displayed on the right side. 
You can select any version with the "Pick" button. 

After you picked a version, all elder changes are automatically also picked and 
will be loaded into "versions" after loading the changes into the image.
In the window below you can see the difference between the selected version and the current image.

If you are satisfied with your selection, 
you can load the changes into the image with the button "Pick changes to load them" in the upper right corner.

Also be warned, you can only see the changes from the last session, 
so after loading changes into the image and you save and close the image, 
you won''t be able to load in all changes you didn''t load in. 
New lost changes after a crash or not saving when closing can still be recovered.'.
	UserDialogBoxMorph inform: helpText translated title: helpTitle translated
