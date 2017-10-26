exports.glyphs['g_circumflex'] =
	unicode: 'ĝ'
	glyphName: 'gcircumflex'
	characterName: 'LATIN SMALL LETTER G WITH CIRCUMFLEX'
	base: 'g'
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
