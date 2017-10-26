exports.glyphs['y_alt_circumflex'] =
	unicode: 'ŷ'
	glyphName: 'ycircumflex'
	characterName: 'LATIN SMALL LETTER Y WITH CIRCUMFLEX'
	altImg: 'alt-antique-y-2.svg'
	base: 'y_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
