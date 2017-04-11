exports.glyphs['y_alt'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	altImg: 'antique-v-like-y.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing  + 17
		spacingRight: 50 * spacing + 17
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: contours[1].nodes[1].expandedTo[0].y
					expand: Object({
						width: ( 47 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						spacingLeft + 100 * width + 113 - (13),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness + 20
					)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[1].x + 0.75 * ( 47 / 54 ) * thickness
					y: Math.min(
						( 60 / 600 ) * xHeight,
						thickness
					)
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: Utils.onLine({
						y: ( 110 / 90 ) * descender
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: ( 110 / 90 ) * descender
					expand: Object({
						width: ( 45 / 54 ) * thickness
						angle: 0 + 'deg'
						distr: 1
					})
