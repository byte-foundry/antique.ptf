exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
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
					x: spacingLeft + (13/54) * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[2].expandedTo[0].y + 48
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 55 / 54 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				2:
					x: 0
					y: contours[0].nodes[3].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							( 48 / 54 ) * thickness,
							- ( descender + 10 ) - 10
						)
						angle: - 82 + 'deg'
						distr: 0
					})
				3:
					x: - 22 * width
					y: descender - 10
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min(
							( 47 / 54 ) * thickness,
							- ( descender + 10 ) - 10
						)
						angle: 180 + 90 + 'deg'
						distr: 1
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
