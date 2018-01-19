exports.glyphs['p'] =
	unicode: 'p'
	glyphName: 'p'
	characterName: 'LATIN SMALL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 35 + serifWidth
		spacingRight: 50 * spacing + 35
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
					y: descender
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						111,
						contours[1].nodes[1].y + Math.cos( 22 / 180 * Math.PI ) * ( 49 / 54 ) * thickness
					)
					dirOut: - Math.PI / 2
					expand:
						width: ( 15 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * ( 73 / 150 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 49 / 54 ) * thickness * contrast
						angle: 292 / 180 * Math.PI
						distr: 1
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 55 / 54 ) * thickness + 10
					)
					y: contours[1].nodes[0].y - 12
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 346 / 180 * Math.PI
						distr: 0.75
				3:
					x: contours[1].nodes[2].x
					y: contours[1].nodes[5].y + 12
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 13 / 180 * Math.PI
						distr: 0.75
				4:
					x: contours[1].nodes[1].x
					y: xHeight + overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: 69 / 180 * Math.PI
						distr: 1
				5:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						xHeight - 110,
						contours[1].nodes[4].y - Math.cos( 21 / 180 * Math.PI ) * ( 51 / 54 ) * thickness
					)
					dirIn: Math.PI / 2
					expand:
						width: ( 15 / 54 ) * thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
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
