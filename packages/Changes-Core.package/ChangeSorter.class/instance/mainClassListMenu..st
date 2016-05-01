class list
mainClassListMenu: aMenu
	"Fill aMenu with items appropriate for the class list"

	<classListMenuShifted: false>
	aMenu title: 'class list'.
	aMenu addStayUpItemSpecial.
	parent ifNotNil: [
		aMenu addList: #( "These two only apply to dual change sorters"
			('copy class chgs to other side'			copyClassToOther)	
			('move class chgs to other side'			moveClassToOther))].

	aMenu addList: #(
			-
			('delete class from change set (d)'		forgetClass)
			('remove class from system (x)'			removeClass)
			-
			('browse full (b)'						browseMethodFull)
			('browse hierarchy (h)'					spawnHierarchy)
			('browse protocol (p)'					browseFullProtocol)
			-
			('printOut'								printOutClass)
			('fileOut'								fileOutClass)
			-
			('references... (r)'						browseVariableReferences)
			('assignments... (a)'						browseVariableAssignments)
			('class refs (N)'							browseClassRefs)
			-
			('more...'								offerShiftedClassListMenu)).

	^ aMenu