exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 40
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
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						95 + (0),
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness + 55
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 8 + 'deg'
						distr: 0.25
				2:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) * ( 98 / 196 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: - 172 + 'deg'
						distr: 0.25
				4:
					x: contours[0].nodes[3].x
					y: Math.min(
						capHeight - 96,
						contours[0].nodes[5].y - ( 55 / 54 ) * thickness - 10
					)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: - 177 + 'deg'
						distr: 0.25
				5:
					x: contours[0].nodes[2].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 49 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
				6:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[4].y
					dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand:
						width: ( 58 / 54 ) * thickness
						angle: 8 + 'deg'
						distr: 0.25
				7:
					x: contours[0].nodes[6].x
					y: Math.max(
						contours[0].nodes[8].y + 105,
						contours[0].nodes[8].y + Math.sin( 71 / 180 * Math.PI ) * ( 53 / 54 ) * thickness * contrast + Math.sin( 9 / 180 * Math.PI ) * 0.75 * ( 57 / 54 ) * thickness + 10
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand:
						width: ( 57 / 54 ) * thickness
						angle: - 9 + 'deg'
						distr: 0.25
				8:
					x: ( contours[0].nodes[7].expandedTo[0].x + contours[0].nodes[9].expandedTo[0].x ) * ( 80 / 157 )
					y: ( 298 / 700 ) * capHeight * crossbar + (0)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand:
						width: ( 53 / 54 ) * thickness * contrast
						angle: 71 + 'deg'
						distr: 0.1
				9:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[7].expandedTo[1].y
					dirIn: - 90 + 'deg'
					expand:
						width: ( 18 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 1
	components:
		0:
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
