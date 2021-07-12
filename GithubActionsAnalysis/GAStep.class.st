Class {
	#name : #GAStep,
	#superclass : #GAObject,
	#instVars : [
		'name',
		'content'
	],
	#category : #GithubActionsAnalysis
}

{ #category : #accessing }
GAStep >> content [

	^ content
]

{ #category : #accessing }
GAStep >> content: anObject [

	content := anObject
]

{ #category : #accessing }
GAStep >> name [

	^ name
]

{ #category : #accessing }
GAStep >> name: anObject [

	name := anObject
]
