instance creation
classCommentCategoryAndAttributesFor: aChangeRecord
	
	^ {#classComment. {#class -> aChangeRecord methodClassName. #stamp -> aChangeRecord stamp} asDictionary}