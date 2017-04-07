exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER I'
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
					y: xHeight
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: ['dotaccent', 'dotaccent_rounded']
			id: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + ( 33 / 40 ) * diacriticHeight
					optical: 58
