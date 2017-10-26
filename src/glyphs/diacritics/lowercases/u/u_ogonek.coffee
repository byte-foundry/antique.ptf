exports.glyphs['u_ogonek'] =
	unicode: 'ų'
	glyphName: 'uogonek'
	characterName: 'LATIN SMALL LETTER U WITH OGONEK'
	base: 'u'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y + 14
