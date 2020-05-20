utils
modifiesClass: aChangeRecord

	"if the change of a ChangeRecord is not pertaining to a class, methodClass returns nil"
	^ aChangeRecord methodClass notNil