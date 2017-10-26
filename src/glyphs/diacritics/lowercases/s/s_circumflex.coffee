exports.glyphs['s_circumflex'] =
	unicode: 'ŝ'
	glyphName: 'scircumflex'
	characterName: 'LATIN SMALL LETTER S WITH CIRCUMFLEX'
	base: 's'
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
