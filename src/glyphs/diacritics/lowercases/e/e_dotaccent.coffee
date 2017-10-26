exports.glyphs['e_dotaccent'] =
	unicode: 'ė'
	glyphName: 'edotaccent'
	characterName: 'LATIN SMALL LETTER E WITH DOT ABOVE'
	base: 'e'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dotaccent'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - 11/40 * diacriticHeight
					optical: 57
