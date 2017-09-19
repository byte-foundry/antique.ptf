exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + serifWidth
		spacingRight: 50 * spacing + 35 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: ( contours[1].nodes[0].expandedTo[1].x + contours[0].nodes[3].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: Math.min(
						contours[0].nodes[2].expandedTo[1].y,
						xHeight / 2 - 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 12 / 54 ) * thickness
						angle: 180 + 35 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 150 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 54 ) * thickness
						angle: 68 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
						contours[0].nodes[1].y + ( Math.cos( ( Math.PI / 2 ) - ( 68 / 180 * Math.PI ) ) * ( 51 / 54 ) * thickness ) + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 13 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[2].expandedTo[1].x + 0.75 * ( ( 55 / 54 ) * thickness ) * Math.cos( 13 / 180 * Math.PI ) + 20
					)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0].point
					opposite: contours[0].nodes[3].expandedTo[1].point
					reversed: true
					noneAnchor: contours[0].nodes[3].expandedTo[0].point
			transformOrigin: contours[0].nodes[3].expandedTo[0].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[1].point
					opposite: contours[0].nodes[3].expandedTo[0].point
					noneAnchor: contours[0].nodes[3].expandedTo[1].point
			transformOrigin: contours[0].nodes[3].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
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
					contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[1].x - 10
				)
		3:
			base: ['none', 'serif-vertical']
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
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
