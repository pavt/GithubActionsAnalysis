Class {
	#name : #BaselineOfGitHubActionAnalysis,
	#superclass : #BaselineOf,
	#category : #BaselineOfGithubActionsAnalysis
}

{ #category : #baselines }
BaselineOfGitHubActionAnalysis >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
			
			"External dependencies"
			spec 
				baseline: 'Roassal3' with: [ spec repository: 'github://ObjectProfile/Roassal3/src'].
			spec 
				baseline: 'PetitParser' with: [ spec repository: 'github://moosetechnology/PetitParser/src' ].
			
			"Packages"
			spec 
				package: 'GitHubActionAnalysis';
				package: 'GitHubActionAnalysis' with: [ spec requires: #('PetitParser'  'Roassal3') ].
			]

			"Groups"
			"spec
				group: 'default' with: #('GithubActionsAnalysis') ]"
]
