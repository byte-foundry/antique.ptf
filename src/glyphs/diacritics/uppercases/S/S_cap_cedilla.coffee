exports.glyphs['S_cap_cedilla'] =
	unicode: 'Ş'
	glyphName: 'Scedilla'
	characterName: 'LATIN CAPITAL LETTER S WITH CEDILLA'
	base: 'S_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
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
