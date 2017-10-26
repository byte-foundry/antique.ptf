exports.glyphs['w_dieresis'] =
	unicode: 'ẅ'
	glyphName: 'wdieresis'
	characterName: 'LATIN SMALL LETTER W WITH DIERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
