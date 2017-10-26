exports.glyphs['C_cap_cedilla'] =
	unicode: 'Ç'
	glyphName: 'Ccedilla'
	characterName: 'LATIN CAPITAL LETTER C WITH CEDILLA'
	base: 'C_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
