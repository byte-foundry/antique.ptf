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
					x: anchors[0].x
					y: anchors[0].y
