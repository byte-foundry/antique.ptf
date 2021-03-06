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
					x: anchors[2].x
					y: anchors[2].y
