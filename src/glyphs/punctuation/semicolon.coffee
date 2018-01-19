exports.glyphs['semicolon'] =
	unicode: ';'
	glyphName: 'semicolon'
	characterName: 'COLON'
	base: 'comma'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: ['dotaccent', 'dotaccent_rounded']
			id: 'top'
			parentAnchors:
				0:
					x: parentAnchors[0].dot
					y: Math.max(363 / 600 * xHeight- 60 / 54 * thickness, 60 / 54 * thickness + 1 / 10 * xHeight)
					optical: 60
