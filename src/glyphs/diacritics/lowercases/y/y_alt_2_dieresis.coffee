exports.glyphs['y_alt_2_dieresis'] =
	unicode: 'ÿ'
	glyphName: 'ydieresis'
	characterName: 'LATIN SMALL LETTER Y WITH DIAERESIS'
	altImg: 'alt-antique-y-2.svg'
	base: 'y_alt_2'
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
