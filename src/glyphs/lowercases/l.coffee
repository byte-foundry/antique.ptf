exports.glyphs['l'] =
	unicode: 'l'
	glyphName: 'l'
	characterName: 'LATIN SMALL LETTER L'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 35
		spacingRight: 50 * spacing + 35
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: ascenderHeight + ( 15 / 80 ) * diacriticHeight
		1:
			x: contours[0].nodes[1].expandedTo[1].x + thickness + 90 + (20)
			y: ascenderHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (27/54) * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
