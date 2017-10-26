exports.glyphs['C_cap_dotaccent'] =
	unicode: 'Ċ'
	glyphName: 'Cdotaccent'
	characterName: 'LATIN CAPITAL LETTER C WITH DOT ABOVE'
	base: 'C_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - (11/40) * diacriticHeight
					optical: 57
