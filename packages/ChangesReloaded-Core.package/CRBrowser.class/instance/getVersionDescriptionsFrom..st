accessing
getVersionDescriptionsFrom: anIndexList
	
	^ anIndexList collect: [:index | (self changeListItems at: index) description]