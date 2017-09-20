exports.glyphs['I_ogonek'] =
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
					x: anchors[1].x + 10
					y: anchors[1].y + 14
