exports.glyphs['a_tilde'] =
	unicode: 'ã'
	glyphName: 'atilde'
	characterName: 'LATIN SMALL LETTER A WITH TILDE'
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
			base: 'tilde'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + ( 3 / 40 ) * diacriticHeight
