*ChangesReloaded-Core
= aChangeRecord
	(self type = aChangeRecord type) ifFalse: [^ false].
	(self class = aChangeRecord class) ifFalse: [^ false].
	(self category = aChangeRecord category) ifFalse: [^ false].
	(self isMetaClassChange = aChangeRecord isMetaClassChange) ifFalse: [^ false].
	(self stamp = aChangeRecord stamp) ifFalse: [^ false].
	^ true
	