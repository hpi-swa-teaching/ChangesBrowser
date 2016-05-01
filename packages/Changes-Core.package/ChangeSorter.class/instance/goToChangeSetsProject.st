changeSet menu
goToChangeSetsProject
	"Transport the user to a project which bears the selected changeSet as its current changeSet"

	| aProject |
	(aProject := myChangeSet correspondingProject) 
		ifNotNil:
			[aProject enter: false revert: false saveForRevert: false]
		ifNil:
			[self inform: 'Has no project']