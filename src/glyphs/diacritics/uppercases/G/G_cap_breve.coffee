exports.glyphs['G_cap_breve'] =
	unicode: 'Ğ'
	glyphName: 'Gbreve'
	characterName: 'LATIN CAPITAL LETTER G WITH BREVE'
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
			base: 'breve'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
