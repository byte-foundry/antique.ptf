# TODO: extralight could explose
exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	altImg: ''
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: Math.max(
						95 + (0),
						contours[0].nodes[2].y + ( 50 / 54 ) * thickness + 55
					)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: - 8 + 'deg'
						distr: 0.25
					})
				2:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) * ( 98 / 196 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 100 * width + 96 - (14),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 58 / 54 ) * thickness + 10
					)
					y: contours[0].nodes[1].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: - 172 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[6].y - (3)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 58 / 54 ) * thickness
						angle: 170 + 'deg'
						distr: 0.25
					})
				5:
					x: ( contours[0].nodes[6].expandedTo[0].x + contours[0].nodes[4].expandedTo[0].x ) * ( 67 / 145 )
					y: ( 422 / 700 ) * capHeight * crossbar - (0)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 54 ) * thickness * contrast
						angle: Math.PI / 2 + Math.acos( Math.max(
							Math.min(
								( ( ( contours[0].nodes[5].x - contours[0].nodes[6].expandedTo[1].x ) - ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[6].expandedTo[1].x ) * ( 41 / 82 ) ) ) / ( ( 51 / 54 ) * thickness * contrast ),
								Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[6].expandedTo[1].point )
							),
							- 0.95
						))
						distr: 0
					})
				6:
					x: contours[1].nodes[2].expandedTo[1].x
					y: Math.min(
						( 326 / 700 ) * capHeight * crossbar - Math.max( 25, ( 25 / 54 ) * thickness) + 25,
						contours[0].nodes[5].y - Math.cos( contours[0].nodes[5].expand.angle + Math.PI / 2 ) * contours[0].nodes[5].expand.width - 10
					)
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 6 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: ( 57 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[0].x + 11
					y: contours[0].nodes[6].y
					typeOut: 'line'
					expand: Object({
						width: ( 46 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 15 / 54 ) * thickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: ( contours[2].nodes[0].expandedTo[0].x + contours[2].nodes[2].expandedTo[0].x ) * ( 61 / 137 )
					y: capHeight - 43 + (0)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: 180 - 77 + 'deg'
						distr: 0.9
					})
				2:
					x: Math.max(
						contours[2].nodes[0].expandedTo[0].x + 100 * width + 37 - (22),
						contours[0].nodes[4].expandedTo[0].x - 11
					)
					y: capHeight
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-curve-inside-auto', 'none']
			id: 'topright'
			parentAnchors:
				0:
					baseWidth: contours[2].nodes[2].expandedTo[0]
					baseHeight: contours[2].nodes[2].expandedTo[0].point
					noneAnchor: contours[2].nodes[2].expandedTo[0].point
					opposite: contours[2].nodes[2].expandedTo[1].point
					curveEnd: contours[2].nodes[1].expandedTo[0]
					rotationAngle: -15
					# left: true
					down: true
					inverseOrder: true
					rotationCenter: contours[2].nodes[2].expandedTo[0].point
		1:
			base: ['none', 'serif-curve-inside-auto']
			id: 'bottom'
			parentAnchors:
				0:
					baseWidth: contours[0].nodes[1].expandedTo[0]
					baseHeight: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					curveEnd: contours[0].nodes[2].expandedTo[0]
					rotationAngle: -15
					left: true
					down: true
					rotationCenter: contours[0].nodes[1].expandedTo[0].point
			parentParameters:
				serifWidth: Math.min(
					serifWidth,
					contours[0].nodes[1].expandedTo[0].y - contours[0].nodes[2].expandedTo[0].y + overshoot
				)
