exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x + 10 + (13)
					y: xHeight - 202
					tyeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 92
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 8 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 90 / 181 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 100 * width + 81 - (13),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * ( 55 / 54 ) * thickness + 10
					)
					y: xHeight - 92
					tyeOut: 'line'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 171 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[3].expandedTo[0].x
					y: 0
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: Math.min(
						contours[0].nodes[0].y,
						( 398 / 600 ) * xHeight
					)
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 18 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (13)
					y: ( 217 / 600 ) * xHeight
					typeOut: 'line'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[1].x
					y: ( 98 / 600 ) * xHeight
					type: 'smooth'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 13 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[4].expandedTo[0].x - contours[1].nodes[2].expandedTo[0].x ) * ( 74 / 147 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 51 / 54 ) * thickness
						angle: 66 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[3].expandedTo[1].x
					y: ( 110 / 600 ) * xHeight
					dirIn: - 90 + 'deg'
					expand: Object({
						width: ( 10 / 54 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
