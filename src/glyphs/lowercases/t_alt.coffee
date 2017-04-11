exports.glyphs['t_alt'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'antique-straight-t-extremity.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
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
			x: Math.max(
				contours[0].nodes[4].expandedTo[1].x + thickness + 90 + (20),
				contours[1].nodes[2].expandedTo[0].x - 35
			)
			x: 0
			y: ascenderHeight
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
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x - 32
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 54 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
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
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 176 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * ( 97 / 194 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[0].x + 45 * width + (13/54) * thickness
					y: Math.max(
						98,
						contours[1].nodes[2].y + ( 47 / 54 ) * thickness + 10
					)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: - 3 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[1].nodes[3].x
					y: xHeight + ( Math.min( 110, (thickness + 56) ) / 600 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
