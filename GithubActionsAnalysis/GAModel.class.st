"
This is a Github Action Model.
"
Class {
	#name : #GAModel,
	#superclass : #GAObject,
	#instVars : [
		'workflows'
	],
	#category : #GithubActionsAnalysis
}

{ #category : #accessing }
GAModel >> addWorkflowAsDictionary: aDictionary [
	"The argument is a dictionary, result of parsing the YML file"
	| aWorkflow jobsAsDict aJob stepsAsDicts aStep |
	aWorkflow := GAWorkflow new.
	aWorkflow name: (aDictionary at: #name).
	
	jobsAsDict := ((aDictionary at: #on) at: #workflow_dispatch) at: #jobs.
	jobsAsDict associations do: [ :aJobAsAssoc |
		aJob := GAJob new.
		aJob name: aJobAsAssoc key.
		stepsAsDicts := aJobAsAssoc value at: #steps.
		stepsAsDicts do: [ :stepDict | 
			aStep := GAStep new.
			aStep name: (stepDict at: 'name' ifAbsent: [ 'UNKWON' ]).
			aJob addStep: aStep
		].
		aWorkflow addJob: aJob.
	].
	
	
	workflows add: aWorkflow
]

{ #category : #accessing }
GAModel >> addWorkflowAsString: ymlFileAsString [
	self addWorkflowAsDictionary: (PPYAMLGrammar parse: ymlFileAsString)
]

{ #category : #initialization }
GAModel >> initialize [
	super initialize.
	workflows := OrderedCollection new
]

{ #category : #accessing }
GAModel >> numberOfJobs [
	workflows ifEmpty: [ ^ 0 ].
	^ (workflows collect: #numberOfJobs) sum
]

{ #category : #accessing }
GAModel >> numberOfSteps [
	workflows ifEmpty: [ ^ 0 ].
	^ (workflows collect: #numberOfSteps) sum
]

{ #category : #accessing }
GAModel >> numberOfWorkflows [
	^ workflows size
]

{ #category : #accessing }
GAModel >> visualize [

	| m |
	m := RSMondrian new.
	m nodes: workflows.
	m normalizeSize: #numberOfSteps.
	m build.

	m canvas shapes @ RSLabeled.

	^ m canvas
]

{ #category : #accessing }
GAModel >> workflows [

	^ workflows
]

{ #category : #accessing }
GAModel >> workflows: anObject [

	workflows := anObject
]
