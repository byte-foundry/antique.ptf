exports.glyphs['f'] =
	unicode: 'f'
	glyphName: 'f'
	characterName: 'LATIN SMALL LETTER F'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 8
		spacingRight: 50 * spacing + 15
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
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].x + 100 * width + 68,
						contours[1].nodes[0].expandedTo[1].x + 12 * width + 40 + ( 14 / 54 ) * thickness
					)
					y: xHeight
					expand: Object({
						width: ( 50 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 48 * width + (13/54) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: xHeight - 3
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				2:
					x: Math.min(
						contours[1].nodes[3].x - ( 30 / 54 ) * thickness,
						contours[1].nodes[1].expandedTo[0].x + ( contours[1].nodes[2].y - contours[1].nodes[1].expandedTo[0].y )
					)
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
							width: Math.min(
								( 48 / 54 ) * thickness,
								contours[1].nodes[3].y - contours[0].nodes[1].y - 10
							)
							angle: - 83 + 'deg'
							distr: 0
						})
				3:
					x: contours[0].nodes[1].x
					y: ascenderHeight
					expand: Object({
						width: Math.min(
							( 47 / 54 ) * thickness,
							contours[1].nodes[3].y - contours[0].nodes[1].y - 10
						)
						angle: - 90 + 'deg'
						distr: 0
					})
