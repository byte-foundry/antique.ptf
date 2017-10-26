exports.glyphs['G_cap_dotaccent'] =
	unicode: 'Ġ'
	glyphName: 'Gdotaccent'
	characterName: 'LATIN CAPITAL LETTER G WITH DOT ABOVE'
	altImg: 'alt-antique-G-0.svg'
	base: 'G_cap'
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
					y: parentAnchors[0].y - 11/40 * diacriticHeight
					optical: 57
