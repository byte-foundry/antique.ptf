exports.glyphs['c_dotaccent'] =
	unicode: 'ċ'
	glyphName: 'cdotaccent'
	characterName: 'LATIN SMALL LETTER C WITH DOT ABOVE'
	base: 'c'
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
					x: anchors[0].x
					y: anchors[0].y - (11/40) * diacriticHeight
					optical: 57
