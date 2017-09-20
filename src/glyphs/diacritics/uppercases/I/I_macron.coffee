exports.glyphs['I_macron'] =
	unicode: 'Ī'
	glyphName: 'Imacron'
	characterName: 'LATIN CAPITAL LETTER I WITH MACRON'
	base: 'I_cap'
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
