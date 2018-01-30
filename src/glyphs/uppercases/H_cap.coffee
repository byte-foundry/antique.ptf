# TODO: bug in merge
exports.glyphs['H_cap'] =
	unicode: 'H'
	glyphName: 'H'
	characterName: 'LATIN CAPITAL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[1].nodes[0].expandedTo[1].x + contours[0].nodes[0].expandedTo[0].x) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: 0
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 105 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 57 / 54 ) * thickness * opticThickness + 10
					)
					y: 0
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					expand:
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0
						distr: 0.75
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: ( 364 / 700 ) * capHeight * crossbar
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: contours[2].nodes[0].y
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 4
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			class: 'upperLeftInsideStump'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 4
				)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			class: 'lowerRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 4
				)
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		6:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			class: 'upperRightInsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
					noneAnchor: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 4
				)
		7:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			class: 'upperRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
