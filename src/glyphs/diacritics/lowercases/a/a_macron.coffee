exports.glyphs['a_macron'] =
	unicode: 'ā'
	glyphName: 'amacron'
	characterName: 'LATIN SMALL LETTER A WITH MACRON'
	altImg: 'alt-antique-a-0.svg'
	base: 'a'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'macron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y + (3/40) * diacriticHeight
