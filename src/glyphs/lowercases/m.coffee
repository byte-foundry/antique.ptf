exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
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
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeOut: 'line'
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
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 55 / 54 ) * thickness + 10
					)
					y: 0
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[3].y + 12
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 180 + 193 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[1].x - contours[1].nodes[3].expandedTo[1].x ) * ( 74 / 151 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 54 ) * thickness * contrast
						angle: 180 - 111 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						xHeight - 110,
						contours[1].nodes[2].y - Math.cos( 21 / 180 * Math.PI ) * ( 51 / 54 ) * thickness
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 100 * width + 94 - (13),
						contours[1].nodes[0].expandedTo[1].x + 0.75 * ( 55 / 54 ) * thickness + 10
					)
					y: 0
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].x
					y: contours[2].nodes[3].y + 12
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 180 + 193 + 'deg'
						distr: 0.75
					})
				2:
					x: contours[2].nodes[3].expandedTo[1].x + ( contours[2].nodes[1].expandedTo[1].x - contours[2].nodes[3].expandedTo[1].x ) * ( 74 / 151 )
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 54 ) * thickness * contrast
						angle: 180 - 111 + 'deg'
						distr: 1
					})
				3:
					x: contours[1].nodes[0].expandedTo[1].x
					y: Math.min(
						xHeight - 110,
						contours[2].nodes[2].y - Math.cos( 21 / 180 * Math.PI ) * ( 51 / 54 ) * thickness
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 54 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
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
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
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
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					noneAnchor: contours[1].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		4:
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
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomleft3'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[0].point
					opposite: contours[2].nodes[0].expandedTo[1].point
					noneAnchor: contours[2].nodes[0].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					( contours[2].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) / 2 - 10
				)
		6:
			base: ['serif-vertical', 'none']
			id: 'bottomright3'
			parentAnchors:
				0:
					base: contours[2].nodes[0].expandedTo[1].point
					opposite: contours[2].nodes[0].expandedTo[0].point
					noneAnchor: contours[2].nodes[0].expandedTo[1].point
					reversed: true
			transformOrigin: contours[2].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
