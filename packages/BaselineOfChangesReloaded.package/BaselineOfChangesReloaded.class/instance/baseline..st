baseline
baseline: spec

	<baseline>
	spec for: #common do: [
		spec 
			package: 'ChangesReloaded-Core';
			package: 'ChangesReloaded-Tests' with: [ spec requires: #('ChangesReloaded-Core') ].
			
		spec
			group: 'default' with: #('ChangesReloaded-Core');
			group: 'Tests' with: #('ChangesReloaded-Tests')]