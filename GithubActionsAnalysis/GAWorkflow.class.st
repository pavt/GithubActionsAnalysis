Class {
	#name : #GAWorkflow,
	#superclass : #GAObject,
	#instVars : [
		'filename',
		'name',
		'jobs'
	],
	#category : #GithubActionsAnalysis
}

{ #category : #adding }
GAWorkflow >> addJob: aJob [
	jobs add: aJob
]

{ #category : #accessing }
GAWorkflow >> filename [

	^ filename
]

{ #category : #accessing }
GAWorkflow >> filename: anObject [

	filename := anObject
]

{ #category : #initialization }
GAWorkflow >> initialize [
	super initialize.
	jobs := OrderedCollection new
]

{ #category : #accessing }
GAWorkflow >> jobs [

	^ jobs
]

{ #category : #accessing }
GAWorkflow >> jobs: anObject [

	jobs := anObject
]

{ #category : #accessing }
GAWorkflow >> name [

	^ name
]

{ #category : #accessing }
GAWorkflow >> name: anObject [

	name := anObject
]

{ #category : #accessing }
GAWorkflow >> numberOfJobs [
	^ jobs size
]

{ #category : #accessing }
GAWorkflow >> numberOfSteps [
	jobs ifEmpty:[ ^ 0 ].
	^ (jobs collect: #numberOfSteps) sum
]

{ #category : #initialization }
GAWorkflow >> printOn: str [
	str nextPut: $<.
	name ifNotNil: [ str nextPutAll: name ].
	str nextPut: $>.
]
