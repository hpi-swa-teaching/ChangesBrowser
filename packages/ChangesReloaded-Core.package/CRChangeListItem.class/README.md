A CRChangeListItem is an item in the CRBrowser's change list that represents a ChangeRecord and has a selection state. It wraps a ChangeRecord of the Squeak image and can be handled as such, all messages not understood by the CRChangeListItem are sent to the wrapped ChangeRecord.

Instance Variables
	changeRecord				ChangeRecord
	isPicked					Bool
	category					Symbol
	attributes					Dictionary
						
changeRecord:
	- the system ChangeRecord that is implemented by Squeak.

isPicked
	- True if the wrapped ChangeRecord is picked for getting loaded into the image.
	
category:
	- A more detailed type of the ChangeRecord. There is no doIt any more, but rather a better description of the change (e.g. packageRemoved).

attributes:
	- a collection of dynamic information that describe the elements of a change. (e.g. the attributes of classRenamed would be {package, oldName, newName})