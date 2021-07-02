categories & attributes
classCommentCategoryAndAttributesFor: aChangeRecord
	
	^ {#classComment. {#class -> aChangeRecord methodClassName. #stamp -> aChangeRecord stamp} as: Dictionary}