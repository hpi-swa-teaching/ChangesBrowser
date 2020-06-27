baseline
baseline: spec

	<baseline>
	spec for: #common do: [
		spec
	            "ChangesReloaded setup"
			package: 'Changes-Core';
  	      	package: 'ChangesReloaded-Core' with: [ spec requires: #('Changes-Core') ];
   	      	package: 'ChangesReloaded-Tests' with: [ spec requires: #('ChangesReloaded-Core') ].
			
		spec
			group: 'default' with: #('ChangesReloaded-Core');
			group: 'Tests' with: #('ChangesReloaded-Tests')]