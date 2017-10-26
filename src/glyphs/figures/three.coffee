exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 16
		spacingRight: 50 * spacing + 30
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
					x: spacingLeft + (14/54) * thickness
					y: contours[0].nodes[1].y - Math.min( 33, ( 33 / 700 ) * capHeight )
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.min(
						capHeight - 98 + (4),
						contours[0].nodes[2].y - ( 50 / 54 ) * thickness - ( Math.sin( 4 / 180 * Math.PI ) * ( 0.75 * ( 58 / 54 ) * thickness ) ) - 10
					)
					dirOut: 90 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 4 / 180 * Math.PI
						distr: 0.25
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 90 / 181 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					typeIn: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					# y: contours[0].nodes[1].y - ( 21 / 700 ) * capHeight
					y: contours[0].nodes[1].y
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 173 + 'deg'
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: Math.max(
						contours[0].nodes[5].expandedTo[1].y + 70,
						contours[0].nodes[5].expandedTo[0].y + 10
					)
					dirOut: - 90 + 'deg'
					typeIn: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 170 + 'deg'
						distr: 0.25
				5:
					x: contours[0].nodes[2].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirIn: 0 + 'deg'
					expand:
						width: Math.min(
							( 36 / 54 ) * thickness * contrast * contrastExtremity,
							contours[1].nodes[0].expand.width
						)
						angle: 90 + 'deg'
						distr: 1
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[5].x - 52,
						contours[0].nodes[0].x
					)
					y: contours[1].nodes[6].y + ( contours[0].nodes[0].y - contours[1].nodes[6].y ) * ( 239 / 447 ) * crossbar
					typeOut: 'line'
					expand:
						width: Math.min(
							( 50 / 54 ) * thickness * contrast * contrastExtremity,
							Math.max(
								contours[0].nodes[0].y - contours[1].nodes[6].y - 50,
								4
							)
						)
						angle: - 90 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[5].x
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					expand:
						width: Math.min(
							( 50 / 54 ) * thickness * contrast * contrastExtremity,
							Math.max(
								contours[0].nodes[0].y - contours[1].nodes[6].y - 50,
								4
							)
						)
						angle: - 90 + 'deg'
						distr: 0
				2:
					x: contours[0].nodes[3].x
					# y: contours[1].nodes[1].expandedTo[1].y - ( 55 / 700 ) * capHeight
					y: contours[1].nodes[1].expandedTo[1].y - 55
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 175 + 'deg'
						distr: 0.25
				3:
					x: contours[1].nodes[2].x
					y: contours[1].nodes[5].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 171 + 'deg'
						distr: 0.25
				4:
					x: contours[1].nodes[6].expandedTo[0].x + ( contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[6].expandedTo[0].x ) * ( 97 / 194)
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
				5:
					x: contours[0].nodes[0].x
					y: Math.min(
						contours[0].nodes[1].y - 20,
						contours[1].nodes[4].y + ( 50 / 54 ) * thickness + 56
					)
					typeOut: 'line'
					dirIn: - 90 + 'deg'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 7 + 'deg'
						distr: 0.25
				6:
					x: contours[0].nodes[0].x
					y: contours[1].nodes[5].y + Math.min( 31, ( 31 / 700 ) * capHeight )
					expand:
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					# down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0]
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[2].expandedTo[0].y - contours[0].nodes[1].expandedTo[0].y + overshoot
				)
		1:
			base: ['serif-curve-inside-auto', 'none']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[1].nodes[5].expandedTo[0]
					baseHeight: contours[1].nodes[5].expandedTo[0]
					noneAnchor: contours[1].nodes[5].expandedTo[0]
					opposite: contours[1].nodes[5].expandedTo[1]
					curveEnd: contours[1].nodes[4].expandedTo[0]
					rotationAngle: -15
					left: true
					down: true
					inverseOrder: true
					rotationCenter: contours[1].nodes[5].expandedTo[0]
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[1].nodes[5].expandedTo[0].y - contours[1].nodes[4].expandedTo[0].y + overshoot
				)
