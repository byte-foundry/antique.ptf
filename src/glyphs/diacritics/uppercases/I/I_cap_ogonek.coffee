exports.glyphs['I_cap_ogonek'] =
	unicode: 'Į'
	glyphName: 'Iogonek'
	characterName: 'LATIN CAPITAL LETTER I WITH OGONEK'
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
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x + 10
					y: parentAnchors[1].y + 14
