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

{ #category : #accessing }
GAWorkflow >> filename [

	^ filename
]

{ #category : #accessing }
GAWorkflow >> filename: anObject [

	filename := anObject
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
