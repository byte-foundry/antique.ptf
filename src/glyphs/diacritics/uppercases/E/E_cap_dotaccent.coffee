exports.glyphs['E_cap_dotaccent'] =
	unicode: 'Ė'
	glyphName: 'Edotaccent'
	characterName: 'LATIN CAPITAL LETTER E WITH DOT ABOVE'
	base: 'E_cap'
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
