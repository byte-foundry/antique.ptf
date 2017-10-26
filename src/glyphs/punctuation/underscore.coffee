exports.glyphs['underscore'] =
	unicode: '_'
	glyphName: 'underscore'
	characterName: 'LOW LINE'
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
					y: - 60 - (6)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 30 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.2
				1:
					x: contours[0].nodes[0].x + 100 * width + 140
					y: contours[0].nodes[0].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 30 / 54 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.2
