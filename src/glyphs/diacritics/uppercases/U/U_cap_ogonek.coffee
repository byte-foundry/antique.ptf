exports.glyphs['U_cap_ogonek'] =
	unicode: 'Ų'
	glyphName: 'Uogonek'
	characterName: 'LATIN CAPITAL LETTER U WITH OGONEK'
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
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x + 10
					y: anchors[1].y + 14
