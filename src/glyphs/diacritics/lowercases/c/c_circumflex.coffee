exports.glyphs['c_circumflex'] =
	unicode: 'ĉ'
	glyphName: 'ccircumflex'
	characterName: 'LATIN SMALL LETTER C WITH CIRCUMFLEX'
	base: 'c'
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
