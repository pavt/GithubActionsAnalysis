"
This is a Job belonging to a Github Action
"
Class {
	#name : #GAJob,
	#superclass : #GAObject,
	#instVars : [
		'name',
		'steps'
	],
	#category : #GithubActionsAnalysis
}

{ #category : #adding }
GAJob >> addStep: aStep [
	steps add: aStep
]

{ #category : #initialization }
GAJob >> initialize [
	super initialize.
	steps := OrderedCollection new
]

{ #category : #accessing }
GAJob >> name [

	^ name
]

{ #category : #accessing }
GAJob >> name: anObject [

	name := anObject
]

{ #category : #initialization }
GAJob >> numberOfSteps [
	^ steps size
]

{ #category : #accessing }
GAJob >> steps [

	^ steps
]

{ #category : #accessing }
GAJob >> steps: anObject [

	steps := anObject
]
