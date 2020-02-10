"
I am a baseline to define the structure and dependencies of the PillarConfigBug_Working project.
"
Class {
	#name : #'BaselineOfPillarConfigBug_Working',
	#superclass : #BaselineOf,
	#category : #'BaselineOfPillarConfigBug_Working'
}

{ #category : #baseline }
BaselineOfPillarConfigBug_Working >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'PillarConfigBug'.
			"Groups"
			spec
				group: 'Core' with: #('PillarConfigBug')
		]
]

{ #category : #accessing }
BaselineOfPillarConfigBug_Working >> projectClass [
	^ MetacelloCypressBaselineProject
]
