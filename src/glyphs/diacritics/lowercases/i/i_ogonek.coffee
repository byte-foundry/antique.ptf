exports.glyphs['i_ogonek'] =
	unicode: 'į'
	glyphName: 'iogonek'
	characterName: 'LATIN SMALL LETTER I WITH OGONEK'
	base: 'i'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x + 10
					y: parentAnchors[0].y + 14
