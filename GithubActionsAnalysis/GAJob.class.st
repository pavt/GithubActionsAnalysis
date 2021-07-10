Class {
	#name : #GAJob,
	#superclass : #GAObject,
	#instVars : [
		'name',
		'steps'
	],
	#category : #GithubActionsAnalysis
}

{ #category : #accessing }
GAJob >> name [

	^ name
]

{ #category : #accessing }
GAJob >> name: anObject [

	name := anObject
]

{ #category : #accessing }
GAJob >> steps [

	^ steps
]

{ #category : #accessing }
GAJob >> steps: anObject [

	steps := anObject
]
