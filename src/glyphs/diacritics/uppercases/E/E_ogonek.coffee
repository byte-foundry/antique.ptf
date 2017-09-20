exports.glyphs['E_ogonek'] =
	unicode: 'Ę'
	glyphName: 'Eogonek'
	characterName: 'LATIN CAPITAL LETTER E WITH OGONEK'
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
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x + 10
					y: anchors[1].y + 14
