# TODO: bug in merge
exports.glyphs['H'] =
	unicode: 'H'
	glyphName: 'H'
	characterName: 'LATIN CAPITAL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth
		spacingRight: 50 * spacing + 40 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/54) * thickness * opticThickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
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
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					expand: Object({
						width: ( 57 / 54 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: ( 364 / 700 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 4
				)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
			transformOrigin: contours[0].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 4
				)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 4
				)
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					noneAnchor: contours[1].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		6:
			base: ['serif-vertical', 'none']
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					reversed: true
					noneAnchor: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: contours[1].nodes[1].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) / 2 - 4
				)
		7:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					noneAnchor: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
