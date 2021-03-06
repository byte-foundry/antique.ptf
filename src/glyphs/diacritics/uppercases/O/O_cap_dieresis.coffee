exports.glyphs['O_cap_dieresis'] =
	unicode: 'Ö'
	glyphName: 'Odieresis'
	characterName: 'LATIN CAPITAL LETTER O WITH DIAERESIS'
	base: 'O_cap'
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
					x: anchors[0].x
					y: anchors[0].y
