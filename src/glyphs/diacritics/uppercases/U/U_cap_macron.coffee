exports.glyphs['U_cap_macron'] =
	unicode: 'Ū'
	glyphName: 'Umacron'
	characterName: 'LATIN CAPITAL LETTER U WITH MACRON'
	base: 'U_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y + (3/40) * diacriticHeight
