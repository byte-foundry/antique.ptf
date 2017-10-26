exports.glyphs['E_cap_dieresis'] =
	unicode: 'Ë'
	glyphName: 'Edieresis'
	characterName: 'LATIN CAPITAL LETTER E WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
