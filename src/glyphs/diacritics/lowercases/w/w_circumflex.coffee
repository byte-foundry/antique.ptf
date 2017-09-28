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
					x: anchors[2].x
					y: anchors[2].y
