exports.glyphs['W_cap_circumflex'] =
	unicode: 'Ŵ'
	glyphName: 'Wcircumflex'
	characterName: 'LATIN CAPITAL LETTER W WITH CIRCUMFLEX'
	base: 'W_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
