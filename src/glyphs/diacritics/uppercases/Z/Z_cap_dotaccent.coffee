exports.glyphs['Z_cap_dotaccent'] =
	unicode: 'Ż'
	glyphName: 'Zdotaccent'
	characterName: 'LATIN CAPITAL LETTER Z WITH DOT ABOVE'
	base: 'Z_cap'
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
					x: anchors[0].x
					y: anchors[0].y - 11/40 * diacriticHeight
					optical: 57
