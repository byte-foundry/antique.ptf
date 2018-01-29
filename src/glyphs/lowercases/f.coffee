exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 8 + serifWidth
		spacingRight: 50 * spacing + 15 + serifWidth
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
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: Math.max(
						contours[0].nodes[0].x + 100 * width + 68,
						contours[1].nodes[0].expandedTo[1].x + 12 * width + 40 + ( 14 / 54 ) * thickness
					)
					y: xHeight
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 48 * width + (13/54) * thickness
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[2].y - ( 103 / 700 ) * ascenderHeight
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 55 / 54 ) * thickness
						angle: 9 / 180 * Math.PI
						distr: 0.25
				2:
					x: Math.min(
						contours[1].nodes[3].x - ( 30 / 54 ) * thickness,
						contours[1].nodes[1].expandedTo[0].x + ( contours[1].nodes[2].y - contours[1].nodes[1].expandedTo[0].y )
					)
					y: ascenderHeight
					typeOut: 'line'
					expand:
							width: Math.min(
								( 48 / 54 ) * thickness * contrast * contrastExtremity,
								contours[1].nodes[3].y - contours[0].nodes[1].y - 10
							)
							angle: - 83 / 180 * Math.PI
							distr: 0
				3:
					x: contours[0].nodes[1].x + Math.max( serifHeight, 0 )
					y: ascenderHeight
					expand:
						width: Math.min(
							( 47 / 54 ) * thickness * contrast * contrastExtremity,
							contours[1].nodes[3].y - contours[0].nodes[1].y - 10
						)
						angle: - Math.PI / 2
						distr: 0
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
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
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
		2:
			base: ['none', 'serif-horizontal']
			id: 'topright'
			parentAnchors:
				0:
					base: contours[1].nodes[3].expandedTo[1]
					noneAnchor: contours[1].nodes[3].expandedTo[1]
					opposite: contours[1].nodes[3].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[3].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y - 10
				)
				serifCurve: Math.min(
					serifCurve,
					contours[1].nodes[3].x - contours[1].nodes[2].x
				)
