exports.glyphs['u_dieresis'] =
	unicode: 'ü'
	glyphName: 'udieresis'
	characterName: 'LATIN SMALL LETTER U WITH DIAERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
