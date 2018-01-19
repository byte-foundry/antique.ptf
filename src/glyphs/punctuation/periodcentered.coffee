exports.glyphs['periodcentered'] =
	unicode: '·'
	glyphName: 'periodcentered'
	characterName: 'MIDDLE DOT'
	ot:
		advanceWidth: spacingLeft + Math.max(
			40,
			Math.min(
				160,
				thickness * ( 120 / 80 )
			)
		) + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 65
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dotaccent', 'dotaccent_rounded']
			id: 'unique'
			parentAnchors:
				0:
					x: ( spacingLeft + Math.max(
						40,
						Math.min(
							160,
							thickness * ( 120 / 80 )
						)
					) + spacingRight ) / 2
					y: ( 210 / 450 ) * xHeight
					optical: ( 57 / 54 ) * thickness
