exports.glyphs['W_cap_dieresis'] =
	unicode: 'Ẅ'
	glyphName: 'Wdieresis'
	characterName: 'LATIN CAPITAL LETTER W WITH DIERESIS'
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
			base: 'dieresis'
			copy: true
			parentAnchors:
				0:
					x: anchors[2].x
					y: anchors[2].y
