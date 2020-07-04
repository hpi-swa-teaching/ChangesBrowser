test-for-intention-revealing
dontTestLawOfDemeter
	"Incorrectly triggers when chaining multiple collection protocol methods."

	self assertNoOccurrences: (self runLinterRule: #lawOfDemeterRule:)