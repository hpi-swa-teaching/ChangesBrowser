utils
modifiesClass: aChangeRecord

	"If the change of a ChangeRecord is not affecting a class, methodClass returns nil"
	^ aChangeRecord methodClass notNil