exports.glyphs['t_alt'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'alt-antique-t-1.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 5
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[4].expandedTo[1].x + 32
			y: contours[1].nodes[4].expandedTo[0].y + diacriticHeight
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
						width: ( 50 / 73) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				1:
					x: contours[1].nodes[0].expandedTo[0].x - 32
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 50 / 73) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[3].expandedTo[0].x + 100 * width + 84 - (13),
						contours[1].nodes[3].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.min(
						contours[1].nodes[1].expandedTo[0].y + 115,
						xHeight / 2 - 10
					)
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: thickness * contrast * contrastExtremity
						angle: Math.PI
						distr: 0.25
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness * contrast * contrastExtremity
						angle: - 176 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 47 / 73) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: contours[0].nodes[0].x + 45 * width + (13/54) * thickness
					y: Math.max(
						98,
						contours[1].nodes[2].y + ( 47 / 73) * thickness + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: thickness
						angle: - 3 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[1].nodes[3].x
					y: xHeight + ( Math.min( 110, (thickness + 56) ) / 600 ) * xHeight
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
	components:
		0:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			class: 'lowerCurveEnd'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			class: 'lowerCurveInsideEnd'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		2:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottom'
			class: 'bottomRightCurveOutsideSerif'
			parentAnchors:
				0:
					baseWidth: contours[1].nodes[1].expandedTo[0]
					baseHeight: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					curveEnd: contours[1].nodes[2].expandedTo[0]
					rotationAngle: -15
					down: true
					rotationCenter: contours[1].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[1].expandedTo[0].y + overshoot
				)
