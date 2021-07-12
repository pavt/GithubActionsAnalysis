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
GAModel >> workflows [

	^ workflows
]

{ #category : #accessing }
GAModel >> workflows: anObject [

	workflows := anObject
]
