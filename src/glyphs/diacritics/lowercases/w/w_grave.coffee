exports.glyphs['w_grave'] =
	unicode: 'ẁ'
	glyphName: 'wgrave'
	characterName: 'LATIN SMALL LETTER W WITH GRAVE'
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
			base: 'grave'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
