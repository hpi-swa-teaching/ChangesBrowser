prompts
askToSave

	Smalltalk
			snapshot: (
				UserDialogBoxMorph 
					confirm: 'Do you want to save the Image?' translated title: 'Changes Reloaded' at: nil)
			andQuit: false