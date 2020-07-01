*ChangesReloaded-Core
modifiesClass

	"If the change of a ChangeRecord is not affecting a class, methodClass returns nil"
	^ self methodClass notNil