exports.glyphs['A_cap_ogonek'] =
	unicode: 'Ą'
	glyphName: 'Aogonek'
	characterName: 'LATIN CAPITAL LETTER A WITH OGONEK'
	base: 'A_cap'
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
					x: parentAnchors[2].x + 8
					y: parentAnchors[2].y + 14
