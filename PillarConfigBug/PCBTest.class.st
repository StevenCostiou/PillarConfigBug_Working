Class {
	#name : #PCBTest,
	#superclass : #TestCase,
	#category : #PillarConfigBug
}

{ #category : #tests }
PCBTest >> testChildConfigurationLooksUpParentConfiguration [
	| c1 c2 |
	c1 := PCBConfig new.
	c1 mySetting: 0.
	c2 := PCBConfig new.
	c2 parentConfig: c1.
	self assert: (c2 mySetting) equals: 0
]
