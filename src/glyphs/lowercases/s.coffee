# TODO: xHeight
exports.glyphs['s'] =
	unicode: 's'
	glyphName: 's'
	characterName: 'LATIN SMALL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 20
		spacingRight: 50 * spacing + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[6].expandedTo[0].x
			y: xHeight + diacriticHeight
		1:
			x: contours[0].nodes[2].expandedTo[0].x
			y: contours[0].nodes[2].expandedTo[0].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: contours[0].nodes[1].y + Math.min( 102, ( 102 / 600 ) * xHeight )
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						Math.min( 93, ( 93 / 600 ) * xHeight ),
						contours[0].nodes[2].y + ( 47 / 73) * thickness * contrast + 10
					)
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 73) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 94 - (15),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: Math.max(
						( 119 / 600 ) * xHeight - (2),
						contours[0].nodes[2].y + ( 47 / 73) * thickness * contrast + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[2].y + ( 47 / 73) * thickness * contrast + ( contours[0].nodes[4].y - contours[0].nodes[2].y + ( 47 / 73) * thickness * contrast ) * ( ( 82 - (10) ) / 266 ) - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirIn: - Math.PI / 2
					type: 'smooth'
					expand:
						width: thickness
						angle: - 170 / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[0].x + ( contours[0].nodes[7].x - contours[0].nodes[0].x ) * 0.5
					y: ( 300 / 600 ) * xHeight
					dirOut: Utils.lineAngle({x: contours[0].nodes[3].expandedTo[0].x, y: contours[0].nodes[3].expandedTo[0].y}, {x: contours[0].nodes[5].expandedTo[0].x, y: contours[0].nodes[5].expandedTo[0].y}) + (16 / 180 * Math.PI)
					type: 'smooth'
					tensionIn: 1.1
					tensionOut: 1.1
					expand:
						width: ( 56 / 73) * thickness
						angle: contours[0].nodes[4].dirOut + Math.PI / 2 + ( 2 / 180 * Math.PI )
						distr: 0.5
				5:
					x: contours[0].nodes[1].x + (1)
					y: Math.min(
						xHeight - ( 113 / 600 ) * xHeight - (0),
						contours[0].nodes[6].y - ( 47 / 73) * thickness * contrast - Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75 + 10
					)
					# y: contours[0].nodes[4].y + ( ( contours[0].nodes[6].y - ( 47 / 73) * thickness * contrast ) - contours[0].nodes[4].y ) * ( 184 / 260 ) + Math.cos( 80 / 180 * Math.PI ) * thickness * 0.75
					dirOut: Math.PI / 2
					type: 'smooth'
					tensionIn: 1.1
					expand:
						width: ( 55 / 73) * thickness
						angle: 189 / 180 * Math.PI
						distr: 0.75
				6:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[7].expandedTo[1].x - contours[0].nodes[5].expandedTo[1].x ) * ( 97 / 194 )
					y: xHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 47 / 73) * thickness * contrast
						angle: Math.PI / 2
						distr: 1
				7:
					x: contours[0].nodes[3].expandedTo[0].x - (13/54) * thickness
					y: Math.min(
						xHeight - Math.min( 93, ( 93 / 600 ) * xHeight ),
						contours[0].nodes[6].y - ( 47 / 73) * thickness * contrast - 10
					)
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.75
				8:
					x: contours[0].nodes[7].x
					y: contours[0].nodes[7].y - Math.min( 93, ( 93 / 600 ) * xHeight )
					expand:
						width: thickness
						angle: 0
						distr: 0.75
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			class: 'topRightCurveOutsideSerif'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[7].dirIn
					baseWidth: contours[0].nodes[7].expandedTo[1]
					baseHeight: contours[0].nodes[7].expandedTo[1]
					noneAnchor: contours[0].nodes[7].expandedTo[1]
					opposite: contours[0].nodes[7].expandedTo[0]
					curveEnd: contours[0].nodes[6].expandedTo[1]
					rotationAngle: -15
					rotationCenter: contours[0].nodes[7].expandedTo[1]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[6].expandedTo[1].y - contours[0].nodes[7].expandedTo[1].y + overshoot
				)
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			class: 'bottomLeftCurveOutside'
			parentAnchors:
				0:
					baseDir: contours[0].nodes[0].dirOut
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y + overshoot
				)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			class: 'upperCurveEnd'
			parentAnchors:
				0:
					base: contours[0].nodes[8].expandedTo[1]
					opposite: contours[0].nodes[8].expandedTo[0]
					noneAnchor: contours[0].nodes[8].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[8].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		3:
			base: ['none', 'serif-vertical']
			id: 'topleft'
			class: 'upperCurveInsideEnd'
			parentAnchors:
				0:
					base: contours[0].nodes[8].expandedTo[0]
					opposite: contours[0].nodes[8].expandedTo[1]
					noneAnchor: contours[0].nodes[8].expandedTo[0]
		4:
			base: ['none', 'serif-vertical']
			id: 'bottomright'
			class: 'lowerCurveEnd'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		5:
			base: ['none', 'serif-vertical']
			id: 'bottomleft'
			class: 'lowerCurveInsideEnd'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ]
			)
