exports.glyphs['w_circumflex'] =
	unicode: 'ŵ'
	glyphName: 'wcircumflex'
	characterName: 'LATIN SMALL LETTER W WITH CIRCUMFLEX'
	base: 'w'
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
					x: parentAnchors[2].x
					y: parentAnchors[2].y
