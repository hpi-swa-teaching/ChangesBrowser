A CRChangeListItem is an item in the CRBrowser's change list that represents a ChangeRecord and has a selection state. It wraps a ChangeRecord of the Squeak image and can be handled as such, all messages not understood by the CRChangeListItem are sent to the wrapped ChangeRecord.

Instance Variables
	changeRecord			Actual ChangeRecord wrapped by CRChangeListItem
	isPicked					True if the wrapped ChangeRecord is picked for getting loaded into the image