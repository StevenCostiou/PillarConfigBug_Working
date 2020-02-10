Class {
	#name : #PCBConfig,
	#superclass : #Object,
	#instVars : [
		'propertyDictionary',
		'parentConfig'
	],
	#category : #PillarConfigBug
}

{ #category : #'reflective operations' }
PCBConfig >> doesNotUnderstand: aMessage [
	(aMessage arguments size = 0) ifTrue: [ ^ self lookupProperty: aMessage selector]. "Lookup value"
	(aMessage arguments size = 1) ifTrue: [ self propertyDictionary at: (aMessage selector allButLast) put: (aMessage arguments at: 1) ]. "Set value"
	(aMessage arguments size > 1) ifTrue: [ self error: 'Too many arguments' ].
	
]

{ #category : #'as yet unclassified' }
PCBConfig >> lookupProperty: aSymbol [
	^ self propertyDictionary at: aSymbol ifAbsent: [ self parentConfig ifNil: [ ^ nil ] ifNotNil: [ ^ self parentConfig lookupProperty: aSymbol] ] 
]

{ #category : #accessing }
PCBConfig >> parentConfig [
	^ parentConfig
]

{ #category : #accessing }
PCBConfig >> parentConfig: anObject [
	parentConfig := anObject
]

{ #category : #'as yet unclassified' }
PCBConfig >> propertyDictionary [
	propertyDictionary ifNil: [ propertyDictionary := Dictionary new ].
	^ propertyDictionary
]
