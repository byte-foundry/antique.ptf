# TODO: extralight could explose
exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	altImg: 'alt-antique-5-0.svg'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 25
		spacingRight: 50 * spacing + 29
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (14/ 54) * thickness
					y: contours[0].nodes[1].y + Math.min( 31, ( 31 / 700 ) * capHeight )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						95 + (0),
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness + 55
					)
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle:( - 8 ) / 180 * Math.PI
						distr: 0.25
				2:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) * ( 98 / 196 )
					y: - overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y
					dirIn: - Math.PI / 2
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle:( - 172 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[6].y - (3)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 170 / 180 * Math.PI
						distr: 0.25
				5:
					x: ( contours[0].nodes[6].expandedTo[0].x + contours[0].nodes[4].expandedTo[0].x ) * ( 67 / 145 )
					y: ( 422 / 700 ) * capHeight * crossbar - (0)
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 51 / 54 ) * thickness * contrast
						angle: Math.PI / 2 + Math.acos( Math.max(
							Math.min(
								( ( ( contours[0].nodes[5].x - contours[0].nodes[6].expandedTo[1].x ) - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * ( 41 / 82 ) ) ) / ( ( 51 / 54 ) * thickness * contrast ),
								Utils.lineAngle({x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}, {x: contours[0].nodes[6].expandedTo[1].x, y: contours[0].nodes[6].expandedTo[1].y})
							),
							- 0.95
						))
						distr: 0
				6:
					x: contours[1].nodes[2].expandedTo[1].x
					y: Math.min(
						( 326 / 700 ) * capHeight * crossbar - Math.max( 25, ( 25 / 54 ) * thickness) + 25,
						#contours[0].nodes[5].y - Math.cos( contours[0].nodes[5].expand.angle + Math.PI / 2 ) * contours[0].nodes[5].expand.width - 10
						contours[0].nodes[5].y - 10
					)
					dirIn: Math.PI / 2
					expand:
						width: ( 6 / 54 ) * thickness
						angle: 0
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0
						distr: 0
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 11
					y: contours[0].nodes[6].y
					typeOut: 'line'
					expand:
						width: ( 46 / 54 ) * thickness
						angle: 0
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: - Math.PI / 2
					expand:
						width: ( 15 / 54 ) * thickness * contrast
						angle: 0
						distr: 1
				1:
					x: ( contours[2].nodes[0].expandedTo[0].x + contours[2].nodes[2].expandedTo[0].x ) * ( 61 / 137 )
					y: capHeight - 43 + (0)
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle:( 180 - 77 ) / 180 * Math.PI
						distr: 0.9
				2:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x + 100 * width + 37 - (22),
						contours[0].nodes[4].expandedTo[0].x - 11
					)
					y: capHeight
					dirIn: - Math.PI / 2
					expand:
						width: ( 50 / 54 ) * thickness
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topright'
			parentAnchors:
				0:
					baseWidth: contours[2].nodes[2].expandedTo[0]
					baseHeight: contours[2].nodes[2].expandedTo[0]
					noneAnchor: contours[2].nodes[2].expandedTo[0]
					opposite: contours[2].nodes[2].expandedTo[1]
					curveEnd: contours[2].nodes[1].expandedTo[0]
					rotationAngle: -15
					# left: true
					down: true
					inverseOrder: true
					rotationCenter: contours[2].nodes[2].expandedTo[0]
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y + overshoot
				)
