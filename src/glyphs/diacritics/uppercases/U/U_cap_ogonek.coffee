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
					x: parentAnchors[1].x + 10
					y: parentAnchors[1].y + 14
