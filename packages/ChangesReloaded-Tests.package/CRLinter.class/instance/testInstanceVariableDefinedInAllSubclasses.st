testing-for-miscellaneous
testInstanceVariableDefinedInAllSubclasses

	self assertNoOccurrences: (self runLinterRule: #instVarInAllSubclasses)