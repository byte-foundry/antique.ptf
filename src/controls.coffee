exports.controls = [
	tab: true
	label: 'Settings'
	icon: '...'
	parameters: [
		name: 'spacing'
		label: 'Spacing'
		min: -1
		max: 3
		step: 0.01
		init: 0
		minAdvised: -0.25
		maxAdvised: 2.50
		disabled: false
		advanced: false
		group: ''
	,
		name: 'diacriticHeight'
		label: 'Diacritic Position'
		min: -5
		max: 150
		step: 1
		init: 40
		minAdvised: 15
		maxAdvised: 80
		disabled: false
		advanced: false
		group: ''
	,
		name: 'opticThickness'
		label: 'Capital thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 1
		minAdvised: 0.7
		maxAdvised: 1.3
		disabled: false
		advanced: false
		group: ''
	,
		name: 'smallCapDelta'
		label: 'SC Height'
		min: 0
		max: 2.5
		step: 0.01
		init: 1.2
		minAdvised: 0
		maxAdvised: 2.5
		disabled: false
		advanced: true
		group: ''
	,
		name: '_scThickness'
		label: 'SC Thickness'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.9
		minAdvised: 0.85
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: ''
	,
		name: '_scWidth'
		label: 'SC Width'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.7
		minAdvised: 0.5
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: ''
	]
,
	tab: true
	label: 'Func'
	icon: '...'
	parameters: [
		name: 'xHeight'
		label: 'x Height'
		min: 300
		max: 900
		step: 1
		init: 600
		minAdvised: 500
		maxAdvised: 900
		disabled: false
		advanced: false
		group: ''
	,
		name: 'capDelta'
		label: 'Capital Height'
		min: 0
		max: 400
		step: 1
		init: 100
		minAdvised: 0
		maxAdvised: 400
		disabled: false
		advanced: false
		group: ''
	,
		name: 'ascender'
		label: 'Ascender'
		min: 50
		max: 800
		step: 1
		init: 100
		minAdvised: 100
		maxAdvised: 400
		disabled: false
		advanced: false
		group: ''
	,
		name: 'descender'
		label: 'Descender'
		min: -850
		max: -50
		step: 1
		init: -90
		minAdvised: -400
		maxAdvised: -95
		disabled: false
		advanced: false
		group: ''
	,
		name: 'crossbar'
		label: 'Crossbar'
		min: 0.8
		max: 1.1
		step: 0.001
		init: 1
		minAdvised: 0.8
		maxAdvised: 1.1
		disabled: false
		advanced: false
		group: ''
	,
		name: 'width'
		label: 'Width'
		min: 0.4
		max: 5
		step: 0.01
		init: 1
		minAdvised: 0.8
		maxAdvised: 3
		disabled: false
		advanced: false
		group: ''
	,
		name: 'slant'
		label: 'Slant'
		min: -15
		max: 30
		step: 0.2
		init: 0
		minAdvised: -15
		maxAdvised: 25
		disabled: false
		advanced: false
		group: ''
	,
		name: 'overshoot'
		label: 'Overshoot'
		min: 0
		max: 20
		step: 1
		init: 10
		minAdvised: 0
		maxAdvised: 20
		disabled: false
		advanced: false
		group: ''
	]
,
	tab: true
	label: 'Style'
	icon: '...'
	parameters: [
		name: 'thickness'
		label: 'Thickness'
		min: 4
		max: 180
		step: 1
		init: 54
		minAdvised: 4
		maxAdvised: 150
		disabled: false
		advanced: false
		group: ''
	,
		name: '_contrast'
		label: 'Contrast'
		min: -1.3
		max: -0.15
		step: 0.01
		init: -1
		minAdvised: -1.3
		maxAdvised: -0.15
		disabled: false
		advanced: false
		group: ''
	,
		name: '_contrastExtremity'
		label: 'extremity'
		min: -1.5
		max: -0.2
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.5
		disabled: false
		advanced: true
		child: true
		group: ''
	,
		name: 'aperture'
		label: 'Aperture'
		min: 0.3
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0.3
		maxAdvised: 2
		disabled: false
		advanced: false
		group: ''
	,
		name: 'apertureTop'
		label: 'Top'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: ''
	,
		name: 'apertureBottom'
		label: 'Bottom'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: ''
	,
		name: 'curviness'
		label: 'Curviness'
		min: 0.1
		max: 1.4
		step: 0.1
		init: 0.6
		minAdvised: 0.1
		maxAdvised: 0.8
		disabled: false
		advanced: false
		group: ''
	# ,
	# 	name: 'inktrap'
	# 	label: 'inktrap'
	# 	min: 0.01
	# 	max: 2
	# 	step: 0.01
	# 	init: 1
	# 	minAdvised: 0
	# 	maxAdvised: 1
	# 	disabled: false
	# 	advanced: false
	# ,
	# 	name: 'breakPath'
	# 	label: 'Break Path'
	# 	min: 0
	# 	max: 1
	# 	step: 0.1
	# 	init: 1
	# 	minAdvised: 0.5
	# 	maxAdvised: 1
	# 	disabled: true
	# 	advanced: false
	]
,
	tab: true
	label: 'Serif'
	icon: '...'
	parameters: [
		name: 'serifWidth'
		label: 'Serif Width'
		min: 0.05 #temporary FIX (instead 0)
		max: 200
		step: 1
		init: 0.05 #temporary FIX (instead 0)
		minAdvised: 0.05
		maxAdvised: 150
		disabled: false
		advanced: false
		group: ''
	,
		name: 'midWidth'
		label: 'Middle Width'
		min: 0.5
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.8
		maxAdvised: 1.2
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifHeight'
		label: 'Serif Height'
		min: 0.001
		max: 100
		step: 1
		init: 5
		minAdvised: 0.001
		maxAdvised: 100
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifMedian'
		label: 'Serif Median'
		min: 0.2
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.2
		maxAdvised: 1.2
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifCurve'
		label: 'Bracket Curve'
		min: 0
		max: 100
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 100
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifRoundness'
		label: 'Serif Roundness'
		min: 0
		max: 1.8
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.8
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifArc'
		label: 'Serif Arc'
		min: -1.5
		max: 0.6
		step: 0.01
		init: 0
		minAdvised: -0.5
		maxAdvised: 0.6
		disabled: false
		advanced: true
		group: ''
	,
		name: 'serifTerminal'
		label: 'Serif Terminal'
		min: -0.5
		max: 2
		step: 0.01
		init: 0
		minAdvised: -0.5
		maxAdvised: 2
		disabled: false
		advanced: true
		group: ''
	,
		name: 'serifTerminalCurve'
		label: 'Serif Terminal Curve'
		min: 0
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: true
		group: ''
	,
		name: 'spurHeight'
		label: 'Spur Height'
		min: 0
		max: 3
		step: 1
		init: 1.3
		minAdvised: 0
		maxAdvised: 3
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifRotate'
		label: 'Serif Rotation'
		min: 0
		max: 2
		step: 0.1
		init: 0
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: false
		group: ''
	,
		name: 'serifAperture'
		label: 'Serif Aperture'
		min: 0
		max: 10
		step: 0.01
		init: 2.5
		minAdvised: 0
		maxAdvised: 10
		disabled: false
		group: ''
	,
		name: 'serifBall'
		label: 'Terminal Ball'
		min: 0.01
		max: 3
		step: 0.01
		init: 1
		minAdvised: 0.01
		maxAdvised: 3
		disabled: false
		advanced: true
		group: ''
	]
]
