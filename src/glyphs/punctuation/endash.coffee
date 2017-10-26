exports.glyphs['endash'] =
	unicode: '–'
	glyphName: 'endash'
	characterName: 'EN DASH'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight * ( 351 / 500 ) * crossbar
					typeOut: 'line'
					expand:
						width: ( 31 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + 140 + 100 * width
					y: contours[0].nodes[0].y
					expand:
						width: ( 31 / 54 ) * thickness
						angle: 90 + 'deg'
						distr: 0.5
