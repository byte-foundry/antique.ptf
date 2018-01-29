exports.glyphs['six'] =
	unicode: '6'
	glyphName: 'six'
	characterName: 'DIGIT SIX'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 40
		spacingRight: 50 * spacing + 35
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
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: Math.PI / 2
					expand:
						width: ( 20 / 54 ) * thickness * contrast
						angle: 0
						distr: 1
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) * ( 77 / 157 )
					y: ( 402 / 700 ) * capHeight - (0)
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * contrast
						angle: Math.PI / 2 + Math.acos( Math.max(
							Math.min(
								( ( ( contours[0].nodes[5].x - contours[0].nodes[6].expandedTo[1].x ) - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * ( 41 / 82 ) ) ) / ( ( 53 / 54 ) * thickness ),
								Utils.lineAngle({x: contours[0].nodes[5].x, y: contours[0].nodes[5].y}, {x: contours[0].nodes[6].expandedTo[1].x, y: contours[0].nodes[6].expandedTo[1].y})
							),
							- 0.95
						))
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[5].expandedTo[0].x + 100 * width + 94 - (13),
						contours[0].nodes[5].expandedTo[1].x + 0.75 * thickness * Math.sin( ( Math.PI / 2 ) - ( 3 / 180 * Math.PI ) ) + 10 + (5)
					)
					y: Math.max(
						contours[0].nodes[3].expandedTo[0].y,
						( 297 / 700 ) * capHeight
					)
					dirOut: - Math.PI / 2
					typeOut: 'line'
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 170 / 180 * Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirOut: - Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness
						angle:( - 171 ) / 180 * Math.PI
						distr: 0.25
				4:
					x: contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: Math.PI / 2
						distr: 0
				5:
					x: spacingLeft + (13/54) * thickness
					y: Math.max(
						98,
						contours[0].nodes[4].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - Math.PI / 2
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle:( - 8 ) / 180 * Math.PI
						distr: 0.25
				6:
					x: contours[0].nodes[5].x
					y: Math.min(
						capHeight - 98,
						contours[0].nodes[7].y - ( 50 / 54 ) * thickness - 10
					)
					dirOut: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle:( 6 ) / 180 * Math.PI
						distr: 0.25
				7:
					x: contours[0].nodes[4].x
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - Math.PI / 2
						distr: 0
				8:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[6].expandedTo[0].y
					dirIn: Math.PI / 2
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle:( 173 ) / 180 * Math.PI
						distr: 0.25
				9:
					x: contours[0].nodes[8].x
					y: contours[0].nodes[8].expandedTo[0].y - Math.min( 32, ( 32 / 700 ) * capHeight )
					expand:
						width: ( 57 / 54 ) * thickness
						angle: Math.PI
						distr: 0.25
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'top'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[8].expandedTo[0]
					baseHeight: contours[0].nodes[8].expandedTo[0]
					noneAnchor: contours[0].nodes[8].expandedTo[0]
					opposite: contours[0].nodes[8].expandedTo[1]
					curveEnd: contours[0].nodes[7].expandedTo[0]
					rotationAngle: -15
					inverseOrder: true
					rotationCenter: contours[0].nodes[8].expandedTo[0]
			parameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[7].expandedTo[0].y - contours[0].nodes[8].expandedTo[0].y + overshoot
				)
