I display a ChangeSet.  Two of me are in a DualChangeSorter.

aStringOrNil
Instance Variables
	currentClassName:		<aStringOrNil>
	currentSelector:		<aStringOrNil>
	myChangeSet:		<aChangeSet>
	parent:		<aDualChangeSorterOrNil>
	priorChangeSetList:		<aCollection>


currentClassName
	- string parseable into class-name [class] [class trait]
	needs to be fitlered by (self withoutItemAnnotation: currentClassName) to remove pakaging note


currentSelector
	- string parseable into selector-name 
	needs to be fitlered by (self withoutItemAnnotation: currentSelector) to remove pakaging note

myChangeSet
	- name of current changeset
parent
	-the dual changesorter that contains this one. Used for dealing with the other half.
priorChangeSetList
	- holds the current change set list. Used to detect changes in list when a newly generated list no long match the prior list.
	