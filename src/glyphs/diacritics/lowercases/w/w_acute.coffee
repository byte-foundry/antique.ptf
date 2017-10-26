exports.glyphs['w_acute'] =
	unicode: 'ẃ'
	glyphName: 'wacute'
	characterName: 'LATIN SMALL LETTER W WITH ACUTE'
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
			base: 'acute'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
